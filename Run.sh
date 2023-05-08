#!/bin/bash

# Set the path to your Visual Studio C# console application executable
app_path="path/to/your/application.exe"

# Parse command line arguments
while getopts "rd" opt; do
  case $opt in
    r)
      # Run in Release mode
      mono --optimize=optimize=${app_path}
      ;;
    d)
      # Run in Debug mode
      mono --debug ${app_path}
      ;;
    \?)
      # Invalid option
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done

# If no options are specified, run in Release mode by default
if [ $# -eq 0 ]; then
  mono --optimize=optimize=${app_path}
fi

# In cmd
./run-app.sh -r  # Run in Release mode
./run-app.sh -d  # Run in Debug mode