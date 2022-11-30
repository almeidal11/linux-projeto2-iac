#!/bin/bash

echo "Atualizando o servidor...."

apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade

echo "Instalando o servidor web apache...."

apt-get install -y apache2

echo "Instalando o unzip...."

apt-get install -y unzip

cd /tmp

echo "Baixando e copiando os arquivos da aplicação...."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio

cp -R * /var/www/html
