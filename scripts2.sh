#!/bin/bash
# Determine the current date and time
current_date_time=$(date +"-%m-%d-%H-%M")

# Define the new image name
new_image_name="pg-cms-image$current_date_time"

# Remove the existing image if it exists
if docker build -t "$new_image_name" .; then
#if build success then only previous container will deleted
  docker rm -f  pg-cms-front >/dev/null 2>&1
  # Run the container
  docker run -d -p 3000:3000 --name pg-cms-front  --restart always "$new_image_name"
else
#as we build failed previous container will keep running
  echo "Build failed. The previous container will continue running."
fi
