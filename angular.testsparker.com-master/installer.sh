#!/bin/bash

## omer citak <omer@netsparker.com>

## Update and upgrade
sudo apt-get update -y
sudo apt-get upgrade -y

## Install Apache
sudo apt install apache2 -y

## Install Mysql
sudo apt install mysql-server -y
sudo mysql_secure_installation
sudo mysql -e "SELECT user,authentication_string,plugin,host FROM mysql.user;"
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';"
sudo mysql -uroot -proot -e "FLUSH PRIVILEGES;"
sudo mysql -uroot -proot -e "SELECT user,authentication_string,plugin,host FROM mysql.user;"
sudo mysql -uroot -proot -e "CREATE DATABASE spa_angular;"
sudo mysql -uroot -proot -e "SET global sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';"
sudo mysql -uroot -proot -e "SET session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';"
sudo service mysql restart
sudo mysql -uroot -proot spa_angular < spa_angular.sql

## Install PHP
sudo apt install php libapache2-mod-php php-mysql -y

## Restart apache
sudo service apache2 restart

## Install NodeJS and NPM
sudo curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt-get install build-essential -y
sudo apt-get install npm -y
sudo chmod -R 777 /usr/lib/node_modules
sudo npm install --global npm

## Install Angular CLI
sudo npm install --global @angular/cli

## Install Git
sudo apt-get install git -y

## Set apache conf files
sudo sed -i -e "s@/var/www/html@$(pwd)/public_html@g" /etc/apache2/apache2.conf
sudo sed -i -e "s@AllowOverride None@AllowOverride All@g" /etc/apache2/apache2.conf
sudo sed -i -e "s@Require all denied@Require all granted@g" /etc/apache2/apache2.conf
sudo sed -i -e "s@/var/www/html@$(pwd)/public_html@g" /etc/apache2/sites-available/000-default.conf
sudo bash -c 'sed "s@/var/www/html@$(pwd)/public_html@g" conf/spa-tokenserver.conf > /etc/apache2/sites-enabled/spa-tokenserver.conf'

## Install npm packages and build
cd angular/
npm install
ng build -prod

# Copy files
cd ../
mkdir public_html
cp conf/.htaccess public_html/
cp conf/Shark.php public_html/  # Shark feature enable
cp conf/test.php public_html    # IAST finding 
cp -R vendor/ public_html/      # SCA Vulnerabilities added
cp -R api/ public_html/
cp -R avatars/ public_html/
cp -R angular/dist/* public_html/

## Enable mod_rewrite
sudo chmod -R 777 public_html/
sudo a2enmod rewrite

## Restart apache
sudo service apache2 restart
