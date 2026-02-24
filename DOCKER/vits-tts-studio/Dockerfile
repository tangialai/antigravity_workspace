FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    ffmpeg \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy all files from the local project directory
COPY . /app/

# Install the package and web requirements
# Note: This includes the local 'valtec_tts' and our 'server' patches
RUN pip install --no-cache-dir -e . fastapi uvicorn python-multipart torch

EXPOSE 8000

# Ensure audio output directory exists
RUN mkdir -p /app/audio_output

CMD ["python", "server/main.py"]
