#!/bin/bash

# UPDATE SERVER
apt-get update && apt-get upgrade -y

# INSTALL APACHE AND UNZIP
apt-get install -y apache2 unzip

# DOWNLOAD REPOSITORY
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# UNZIP REPOSITORY
unzip main.zip

# COPY FILES TO APACHE DIRECTORY
cp -R linux-site-dio-main/* /var/www/html/

# RESTART APACHE
systemctl restart apache2

echo "DEPLOY COMPLETE"
