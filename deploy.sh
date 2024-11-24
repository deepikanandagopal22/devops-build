#!/bin/bash


set -e


IMAGE_NAME="devops-build"
TAG="latest"
CONTAINER_NAME="devops-app"
PORT="80"

echo "Stopping existing container (if any)..."
docker stop $CONTAINER_NAME || true
docker rm $CONTAINER_NAME || true

echo "Deploying Docker container..."


docker run -d \
  --name $CONTAINER_NAME \
  -p $PORT:80 \
  $IMAGE_NAME:$TAG

echo "Docker container $CONTAINER_NAME is now running on port $PORT."

