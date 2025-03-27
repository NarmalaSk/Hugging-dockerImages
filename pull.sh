
#!/bin/bash

# Fail on errors
set -e

# Get model name from input
MODEL_NAME=$1

if [ -z "$MODEL_NAME" ]; then
  echo "Error: Model name is required."
  exit 1
fi

echo "Pulling Docker image for model: $MODEL_NAME"

# Pull the image from Hugging Face's Docker Hub
docker pull "huggingface/$MODEL_NAME"

echo "Docker image $MODEL_NAME pulled successfully!"
