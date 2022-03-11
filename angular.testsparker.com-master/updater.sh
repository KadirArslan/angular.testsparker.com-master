#!/bin/bash

## Update Mysql
sudo mysql -uroot -proot -e "DROP DATABASE spa_angular;"
sudo mysql -uroot -proot -e "CREATE DATABASE spa_angular;"
sudo mysql -uroot -proot -e "SET global sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';"
sudo mysql -uroot -proot -e "SET session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';"
sudo mysql -uroot -proot spa_angular < spa_angular.sql

## Install npm packages and build
cd angular/
npm install
ng build -prod

# Copy files
cd ../
sudo rm -rf public_html/
mkdir public_html
cp conf/.htaccess public_html/
cp -R vendor/ public_html/      # SCA Vulnerabilities added
cp -R api/ public_html/
cp -R avatars/ public_html/
cp -R angular/dist/* public_html/

## Change chmod
sudo chmod -R 777 public_html/

## Restart apache
sudo service apache2 restart