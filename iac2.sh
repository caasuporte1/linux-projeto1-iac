#!/bin/bash


echo "atualizando servidor..."
apt-get update -y
apt-get upgrade -y

echo "Baixando arquivos da aplicação..."

apt-get install apache2 -y
apt-get unzip -y
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/


