#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define directories
LIB_DIR="samplelib"
DIST_DIR="$LIB_DIR/dist"
PACKAGES_DIR="packages"

# Navigate to the library directory
cd "$LIB_DIR"

# Clean previous builds
echo "Cleaning previous builds..."
rm -rf dist/ build/ *.egg-info/

# Build the package
echo "Building the package..."
python setup.py sdist bdist_wheel

# Navigate back to the project root
cd ..

# Create the packages directory if it doesn't exist
mkdir -p "$PACKAGES_DIR"

# Copy the distribution files to the packages directory
echo "Uploading the package to pypiserver..."
cp "$DIST_DIR"/* "$PACKAGES_DIR/"

echo "Package successfully uploaded to pypiserver."
