#!/bin/bash
set -e  # Exit on error

# Install Docker on Ubuntu
sudo apt-get install docker.io docker-compose -y

# Give the current user permission to run Docker commands
sudo usermod -aG docker $USER && newgrp docker

# Check if Docker is installed successfully
docker --version

# Check if Docker Compose is installed successfully
docker-compose --version