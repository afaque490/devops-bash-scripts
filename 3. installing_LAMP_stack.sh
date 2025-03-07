#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update -y

# Install Apache
echo "Installing Apache..."
sudo apt install apache2 -y

# Install MySQL Server
echo "Installing MySQL Server..."
sudo apt install mysql-server -y

# Install PHP and necessary modules
echo "Installing PHP and necessary modules..."
sudo apt install php libapache2-mod-php php-mysql -y

# Restart Apache to apply changes
echo "Restarting Apache..."
sudo systemctl restart apache2

echo "LAMP stack installation completed successfully!"

