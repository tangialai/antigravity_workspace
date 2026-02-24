import os
import uuid
import shutil
from fastapi import FastAPI, HTTPException, UploadFile, File, Form
from fastapi.staticfiles import StaticFiles
from fastapi.middleware.cors import CORSMiddleware
from pydantic import BaseModel
from typing import List, Optional
import torch

import sys
import types

# Python 3.12 compatibility: mock 'imp' module which was removed
if sys.version_info >= (3, 12):
    imp = types.ModuleType('imp')
    def find_module(name, path=None): return None, None, None
    def load_module(name, file, pathname, description): return None
    imp.find_module = find_module
    imp.load_module = load_module
    sys.modules['imp'] = imp

from valtec_tts import TTS, ZeroShotTTS

app = FastAPI(title="Valtec TTS Intranet API")

# Enable CORS for local development/intranet access
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

# Handle zero-shot model nesting issue (common in auto-downloads)
import pathlib
def fix_zeroshot_paths():
    if os.name == 'nt':
        cache_base = pathlib.Path(os.environ.get('LOCALAPPDATA', pathlib.Path.home() / 'AppData' / 'Local'))
    else:
        # In Docker, this is usually /root/.cache
        cache_base = pathlib.Path(os.environ.get('XDG_CACHE_HOME', pathlib.Path.home() / '.cache'))
    
    model_dir = cache_base / 'valtec_tts' / 'models' / 'zeroshot-vietnamese'
    
    # We call this twice: once initially, and once after ZeroShotTTS() might have downloaded files
    print(f"Checking model directory: {model_dir}")
    if not model_dir.exists():
        return

    nested_dir = model_dir / 'pretrained' / 'zeroshot'
    if nested_dir.exists():
        if not (model_dir / 'config.json').exists():
            print(f"Moving nested models from {nested_dir} up to {model_dir}")
            for f in nested_dir.glob("*"):
                shutil.move(str(f), str(model_dir))
            # Also check for hasp weights
            hasp_nested = model_dir / 'pretrained' / 'hasp'
            if hasp_nested.exists():
                hasp_dir = model_dir.parent / 'hasp'
                hasp_dir.mkdir(parents=True, exist_ok=True)
                for f in hasp_nested.glob("*"):
                    shutil.move(str(f), str(hasp_dir))

# Initialize TTS models lazily or with a pre-check
tts_normal = TTS()

# For ZeroShotTTS, we try to init, if it fails due to paths, we fix and retry once
try:
    tts_zeroshot = ZeroShotTTS()
except FileNotFoundError:
    print("ZeroShotTTS initialization failed (likely due to nested paths). Fixing and retrying...")
    fix_zeroshot_paths()
    tts_zeroshot = ZeroShotTTS()
except Exception as e:
    print(f"Error initializing ZeroShotTTS: {e}")
    # Fallback: create a dummy or null object if zeroshot is not critical for startup
    tts_zeroshot = None 

# Final run of path fix just in case
fix_zeroshot_paths()

# Directories
AUDIO_OUTPUT_DIR = "audio_output"
CLIENT_DIR = "client"

if not os.path.exists(AUDIO_OUTPUT_DIR):
    os.makedirs(AUDIO_OUTPUT_DIR)

class TTSRequest(BaseModel):
    text: str
    speaker: str = "NF"
    speed: float = 1.0
    noise_scale: float = 0.667
    noise_scale_w: float = 0.8
    sdp_ratio: float = 0.2

@app.get("/speakers")
async def list_speakers():
    return {"speakers": tts_normal.list_speakers()}

@app.post("/synthesize")
async def synthesize(request: TTSRequest):
    try:
        filename = f"{uuid.uuid4()}.wav"
        output_path = os.path.join(AUDIO_OUTPUT_DIR, filename)
        
        tts_normal.speak(
            text=request.text,
            speaker=request.speaker,
            output_path=output_path,
            speed=request.speed,
            noise_scale=request.noise_scale,
            noise_scale_w=request.noise_scale_w,
            sdp_ratio=request.sdp_ratio
        )
        
        return {"audio_url": f"/audio/{filename}"}
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))

@app.post("/clone")
async def clone_voice(
    text: str = Form(...),
    reference_audio: UploadFile = File(...)
):
    try:
        # Save reference audio temporarily
        ref_filename = f"ref_{uuid.uuid4()}_{reference_audio.filename}"
        ref_path = os.path.join(AUDIO_OUTPUT_DIR, ref_filename)
        
        with open(ref_path, "wb") as buffer:
            shutil.copyfileobj(reference_audio.file, buffer)
            
        # Generate cloned voice
        output_filename = f"cloned_{uuid.uuid4()}.wav"
        output_path = os.path.join(AUDIO_OUTPUT_DIR, output_filename)
        
        tts_zeroshot.clone_voice(
            text=text,
            reference_audio=ref_path,
            output_path=output_path
        )
        
        # Cleanup reference file
        os.remove(ref_path)
        
        return {"audio_url": f"/audio/{output_filename}"}
    except Exception as e:
        if os.path.exists(ref_path):
            os.remove(ref_path)
        raise HTTPException(status_code=500, detail=str(e))

# Serve generated audio files
app.mount("/audio", StaticFiles(directory=AUDIO_OUTPUT_DIR), name="audio")

# Serve frontend
app.mount("/", StaticFiles(directory=CLIENT_DIR, html=True), name="static")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
