#!/bin/bash
set -e  # Exit on error

# Install JDk 
sudo apt install fontconfig openjdk-17-jre -y

# Add the Jenkins repository key to the system
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

# Add the Jenkins repository to the sources list
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# Update the package list
sudo apt-get update -y

# Install Jenkins
sudo apt-get install jenkins -y

# Check if Jenkins is installed successfully
jenkins --version