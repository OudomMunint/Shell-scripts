#!/bin/bash

# Proj paths and files
SOLUTION_FILE="./MyMvcApp.sln"
TEST_PROJECT_FILE="./MyMvcApp.Tests.csproj"
PUBLISH_DIRECTORY="./publish"
PACKAGE_DIRECTORY="./packages"

# Compile
echo "Compiling the solution..."
dotnet build $SOLUTION_FILE

# Tests UT/E-E
echo "Running tests..."
dotnet test $TEST_PROJECT_FILE

# Publish
echo "Publishing the project to $PUBLISH_DIRECTORY..."
dotnet publish $SOLUTION_FILE --output $PUBLISH_DIRECTORY

# Package
echo "Packaging the project to $PACKAGE_DIRECTORY..."
dotnet pack $SOLUTION_FILE --output $PACKAGE_DIRECTORY