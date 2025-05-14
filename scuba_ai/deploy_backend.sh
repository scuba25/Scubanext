#!/bin/bash
IMAGE_NAME="scuba-ai-backend"
CONTAINER_NAME="scuba-ai-backend-container"
PORT="8000"

set -e
cd ~/scuba_ai/backend || exit 1

echo "[*] Building Docker image..."
docker build -t "" .

echo "[*] Stopping existing container..."
docker stop "" 2>/dev/null || true
docker rm "" 2>/dev/null || true

echo "[*] Running container..."
docker run -d --name "" -p ":" -e GROQ_API_KEY="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" ""

echo "[*] Container logs (press Ctrl+C to exit):"
sleep 2
docker logs -f ""
