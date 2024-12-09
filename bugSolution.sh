#!/bin/bash

# Corrected script avoids the race condition by using a safer approach

find . -type f -print0 | while IFS= read -r -d $'\0' file; do
  # Process the file
  echo "Processing: $file"
  # Simulate some work
  sleep 1
  # Store the file path in a variable
  local filePath="$file"
  #Remove after processing is complete
  rm -f "$filePath"
done