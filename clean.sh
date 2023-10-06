#!/bin/bash

# Define the root directory where your .NET projects are located
root_directory="/Users/dom/Desktop/TFS/PDS"

# Find and remove all bin and obj folders
find "$root_directory" -type d \( -name "bin" -o -name "obj" \) -exec rm -rf {} +

echo "Cleanup completed."