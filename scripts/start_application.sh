#!/bin/bash
echo "Starting the application in Docker..."
docker run -d -p 80:80 --name my-frontend-app 156041427059.dkr.ecr.us-east-2.amazonaws.com/my-frontend-app:latest
