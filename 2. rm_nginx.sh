#!/bin/bash

# Stopping the Nginx service
sudo systemctl stop nginx

# Disabling Nginx to prevent it from starting at boot
sudo systemctl disable nginx

# Removing Nginx and its common dependencies
sudo apt remove --purge nginx nginx-common -y

# Removing unnecessary dependencies
sudo apt autoremove -y

# Deleting the Nginx configuration directory
sudo rm -rf /etc/nginx

# Removing the default web root directory (only do this if you don't need any files inside)
sudo rm -rf /var/www/html

# Checking if Nginx is completely removed by running the version command
echo "Running Nginx Version Command"
nginx -v

