#!/bin/bash

# Update package index
apt-get update

# Install dependencies
apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

# Add Docker repository for Ubuntu
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package index again
apt-get update

# Install Docker CE
apt-get install -y docker-ce

# Check Docker version
docker --version

# Optionally, add user to docker group to run Docker without sudo
usermod -aG docker $USER

echo "Docker has been installed."
echo "Please log out and log back in to apply group changes for running Docker without sudo."
