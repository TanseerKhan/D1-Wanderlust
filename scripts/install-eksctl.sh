#!/bin/bash
set -e # Exit on error

# Download the latest version of eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

# Move the eksctl binary to /usr/local/bin
sudo mv /tmp/eksctl /usr/local/bin

# Check if eksctl is installed correctly
eksctl version