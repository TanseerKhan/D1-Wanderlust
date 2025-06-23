#!/bin/bash
set -e  # Exit on error

# Download latest Kind release
curl -Lo ./kind "https://kind.sigs.k8s.io/dl/$(curl -s https://api.github.com/repos/kubernetes-sigs/kind/releases/latest | grep tag_name | cut -d '"' -f4)/kind-linux-amd64"

# Make it executable
chmod +x ./kind

# Move to /usr/local/bin
sudo mv ./kind /usr/local/bin/

# Verify installation
kind --version