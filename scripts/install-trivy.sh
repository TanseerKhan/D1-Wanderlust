#!/bin/bash
set -e  # Exit on error

# Install required packages
sudo apt-get install wget apt-transport-https gnupg lsb-release -y

# Add the GPG key
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | sudo apt-key add -

# Add the Trivy repository
echo deb https://aquasecurity.github.io/trivy-repo/deb $(lsb_release -sc) main | sudo tee -a /etc/apt/sources.list.d/trivy.list

# Update package lists
sudo apt-get update -y

# Install Trivy
sudo apt-get install trivy -y

# Check if Trivy is installed successfully
trivy --version