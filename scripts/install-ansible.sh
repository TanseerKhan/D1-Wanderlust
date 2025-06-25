#!/bin/bash
set -e # Exit on error

# Install software-properties-common
sudo apt install -y software-properties-common

# Add Ansible PPA
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Update package list
sudo apt update

# Install Ansible
sudo apt install -y ansible

# Check if Ansible is installed correctly
ansible --version