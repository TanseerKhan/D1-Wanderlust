#!/bin/bash
set -e  # Exit on error

# Downlaod aws cli v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Install unzip if not already installed
sudo apt install unzip

# Unzip the downloaded file
unzip awscliv2.zip

# Run the installer
sudo ./aws/install