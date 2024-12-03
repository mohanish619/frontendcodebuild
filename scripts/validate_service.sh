#!/bin/bash
echo "Validating the application..."
curl -f http://localhost || exit 1
echo "Application validation successful."
