# Valtec VITS-TTS Studio 🎙️

A premium Vietnamese Text-to-Speech (TTS) application designed for professional intranet environments. Powered by the Valtec-TTS engine with multi-speaker support and Zero-Shot voice cloning.

## Features

- **High-Fidelity Vietnamese TTS**: Supports Northern and Southern voices (NF, SF, NM, SM).
- **Studio Interface**: Professional dashboard with neon-vibrant aesthetics and real-time audio visualization using Wavesurfer.js.
- **Advanced Controls**: Fine-tune speech parameters like `Noise Scale`, `SDP Ratio`, and `Speed`.
- **Zero-Shot Voice Cloning**: Clone any voice using a short (3-10s) audio sample.
- **Activity History**: Keep track of your generated audio files.

## Technical Stack

- **Backend**: FastAPI (Python 3.10)
- **Engine**: Valtec-TTS / PyTorch
- **Frontend**: Vanilla JS / CSS Glassmorphism
- **Deployment**: Docker & Docker Compose

## Quick Start (with Docker)

1. Make sure you have Docker installed.
2. Navigate to the project directory:
    ```bash
    cd DOCKER/vits-tts-studio
    ```
3. Start the application:
    ```bash
    docker compose up -d
    ```
4. Access the studio at: `http://localhost:8000`

## Volume Mapping

Generated audio files are stored centrally at:
`/Users/ryantanmai/WORKSPACE/DOCKER/volumes/vits-tts/audio_output`

## License

MIT - See LICENSE file for details.
