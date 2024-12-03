#!/bin/bash
echo "Starting the application..."
docker stop my-frontend-app || true
docker rm my-frontend-app || true
docker pull 156041427059.dkr.ecr.us-east-2.amazonaws.com/my-frontend-app:latest
docker run -d -p 80:3000 --name my-frontend-app 156041427059.dkr.ecr.us-east-2.amazonaws.com/my-frontend-app:latest
echo "Application started successfully."
