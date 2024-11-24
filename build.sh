#!/bin/bash


set -e


IMAGE_NAME="devops-build"
TAG="latest"

echo "Building Docker image..."


docker build -t $IMAGE_NAME:$TAG .

echo "Docker image $IMAGE_NAME:$TAG built successfully."

