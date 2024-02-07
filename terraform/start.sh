#!/bin/bash
sudo apt-get update
sudo apt install wget apache2 unzip -y
sudo systemctl start apache2
wget https://www.tooplate.com/zip-templates/2106_soft_landing.zip
unzip -o 2106_soft_landing.zip
cp -r 2106_soft_landing/* /var/www/html/
sudo systemctl restart apache2