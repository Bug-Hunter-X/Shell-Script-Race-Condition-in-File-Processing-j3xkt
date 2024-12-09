#!/bin/bash

# This script attempts to process files in a directory,
# but it contains a subtle race condition.

find . -type f -print0 | while IFS= read -r -d $'\0' file; do
  # Process the file
  echo "Processing: $file"
  # Simulate some work
  sleep 1
  # Remove the file (the race condition is here)
  rm -f "$file"
done