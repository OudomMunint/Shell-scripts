#!/bin/bash

# Place this file in the directory containing your .NET MAUI project root
# cd to the directory containing this file before running it

# Remove .DS_Store files
find . -type f -name ".DS_Store" -delete

# Remove bin & obj
rm -rf bin
rm -rf obj

# Clean
dotnet clean -c Debug -f net7.0 -r ios
dotnet clean -c Debug -f net7.0 -r android

# Build
dotnet build -c Debug -f net7.0 -r ios

# Run your .NET MAUI app
dotnet run -c Debug -f net7.0 -r ios
## dotnet run -c Release -f net7.0 -r ios

exit 0