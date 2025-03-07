#!/bin/bash

# Define web root directory
WEB_ROOT="/var/www/html"

# Get the current working directory
CURRENT_DIR=$(pwd)

# Confirm before replacing the website
echo "This will replace all contents of $WEB_ROOT with the contents of $CURRENT_DIR."
read -p "Are you sure? (y/n): " CONFIRM

if [[ "$CONFIRM" != "y" ]]; then
    echo "Operation canceled."
    exit 1
fi

# Remove existing website files
echo "Removing existing website files..."
sudo rm -rf "$WEB_ROOT"/*

# Copy all files from the current directory to /var/www/html
echo "Copying new website files from $CURRENT_DIR to $WEB_ROOT..."
sudo cp -r "$CURRENT_DIR"/* "$WEB_ROOT"

# Restart Nginx
echo "Restarting Nginx..."
sudo systemctl restart nginx

echo "Website updated successfully with contents from $CURRENT_DIR!"

