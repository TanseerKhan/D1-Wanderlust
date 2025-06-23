#!/bin/bash
set -e # Exit on error

#Download the latest stable version of kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

#Make it executable
chmod +x kubectl

#Move to /usr/local/bin
sudo mv kubectl /usr/local/bin/

#Verify installation
kubectl version --client