#!/bin/bash
set -e

# Go to app folder
cd /home/ubuntu/app

# Stop existing container if running
docker stop web-container || true
docker rm web-container || true

# Build new image
docker build -t sample-website .

# Run container
docker run -d -p 80:80 --name web-container sample-website
