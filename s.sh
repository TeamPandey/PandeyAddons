#!/bin/bash

# Directory to scan
DIRECTORY="/home/ubuntu/PandeyAddons"

# Ensure the directory exists
if [ ! -d "$DIRECTORY" ]; then
  echo "Directory $DIRECTORY does not exist!"
  exit 1
fi

# Find all files in the directory (and subdirectories)
find "$DIRECTORY" -type f | while read -r file; do
  # Check if the file is a text file (you can modify this to suit specific types)
  if file "$file" | grep -q 'text'; then
    # Use sed to replace 'Pragyan' with 'Pragyan' in the file
    sed -i 's/Pragyan/Pragyan/g' "$file"
    echo "Replaced 'Pragyan' with 'Pragyan' in $file"
  fi
done

echo "Replacement process completed."
