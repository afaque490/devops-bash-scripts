#!/bin/bash

#Installing, enabling and starting nginx
sudo apt install nginx -y
sudo systemctl enable nginx 
sudo systemctl start nginx


#Navigating to nginx root directory, and removing default files
cd /var/www/html
sudo rm -rf *


#Making temporary directory and navigating to it
mkdir -p /tmp/webfile
cd /tmp/webfile


#Downloading and unziping website files in temporary directory
wget https://www.tooplate.com/zip-templates/2130_waso_strategy.zip
unzip 2130_waso_strategy.zip


#Copying website files from temporay directory to nginx root directory
sudo cp -r 2130_waso_strategy/* /var/www/html

#Removing temporaary directory
cd /tmp
rm -rf webfile/


#Restarting Nginx
sudo systemctl restart nginx

echo 
echo
echo #####################################
echo "Installed Nginx, downloaded and deployed website successfully..."




