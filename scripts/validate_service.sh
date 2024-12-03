#!/bin/bash
echo "Validating the application..."

# Retry curl to check if the app is up, up to 5 times with 5-second intervals
for i in {1..5}; do
  curl -f http://localhost && break || sleep 5
done

if [ $? -eq 0 ]; then
  echo "Application validation successful."
else
  echo "Application validation failed."
  exit 1
fi
