#!/bin/bash
echo "Installing Docker..."
yum install -y docker

echo "Starting Docker service..."
systemctl start docker
systemctl enable docker

echo "Installing Nginx..."
yum install -y nginx
systemctl start nginx
systemctl enable nginx
