#!/bin/bash

# List of directories containing docker-compose.yml files
directories=(
  "~/homelab/web-gateway"
  "~/homelab/web-gateway/main"
  "~/homelab/web-gateway/example2"
  "~/homelab/web-gateway/example1"
)

for dir in "${directories[@]}"; do
  if [ -d "$dir" ]; then
    echo "Processing directory: $dir"
    
    # Change to the directory
    cd "$dir" || { echo "Failed to change to directory $dir"; continue; }
    
    # Run docker-compose up -d
    if docker compose up -d; then
      echo "Successfully started services in $dir"
    else
      echo "Failed to start services in $dir"
    fi
    
    # Return to the original directory
    cd - > /dev/null
  else
    echo "Directory $dir does not exist"
  fi
done
