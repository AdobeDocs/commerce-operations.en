#!/bin/bash

# Copyright 2024 Adobe All Rights Reserved.
# NOTICE:  All information contained herein is, and remains the property of Adobe and its suppliers, if any.
# The intellectual and technical concepts contained herein are proprietary to Adobe and its suppliers and are protected by all applicable intellectual property laws, including trade secret and copyright laws.
# Dissemination of this information or reproduction of this material is strictly forbidden unless prior written permission is obtained from Adobe.

# Setup script for pre-commit hooks
# Run this script after cloning the repository to enable image optimization hooks

set -e

echo "Setting up pre-commit hooks for image optimization..."

# Get the repository root
REPO_ROOT="$(git rev-parse --show-toplevel)"
cd "$REPO_ROOT"

# Check if .githooks directory exists
if [ ! -d ".githooks" ]; then
    echo "Error: .githooks directory not found. Make sure you're in the right repository."
    exit 1
fi

# Configure Git to use the .githooks directory
echo "Configuring Git to use .githooks directory..."
git config core.hooksPath .githooks

# Make all hooks executable
echo "Making hooks executable..."
chmod +x .githooks/*

# Verify the setup
echo "Verifying setup..."
if [ "$(git config core.hooksPath)" = ".githooks" ]; then
    echo "✅ Pre-commit hooks configured successfully!"
    echo "   Git will now use hooks from .githooks directory"
    echo ""
    echo "Available hooks:"
    ls -la .githooks/
    echo ""
    echo "The image optimization hook will now run automatically on every commit."
else
    echo "❌ Failed to configure hooks. Please check your Git configuration."
    exit 1
fi

# Check if _jekyll directory exists and has required gems
if [ -d "_jekyll" ]; then
    echo ""
    echo "Checking Jekyll setup..."
    cd _jekyll
    
    if [ -f "Gemfile" ]; then
        echo "Installing required gems..."
        bundle install
        
        if bundle exec image_optim --version > /dev/null 2>&1; then
            echo "✅ image_optim is properly installed"
        else
            echo "⚠️  image_optim not found. Please run 'bundle install' in _jekyll directory"
        fi
    else
        echo "⚠️  Gemfile not found in _jekyll directory"
    fi
    
    cd ..
else
    echo "⚠️  _jekyll directory not found"
fi

echo ""
echo "Setup complete! Your pre-commit hooks are now active."
echo ""
echo "To test the hook:"
echo "  1. Add an image file to your repository"
echo "  2. Stage it with: git add <image-file>"
echo "  3. Try to commit: git commit -m 'test'"
echo "  4. The hook should automatically optimize the image"
echo ""
echo "For more information, see the README.md file"
