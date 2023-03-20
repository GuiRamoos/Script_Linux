#!/bin/bash 
echo "Atualizando o sistema"
apt-get update -y
apt-get upgrade -y
apt-install apache2
apt-install unzip

echo "Baixando aplicação"

cd /tmp 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Copiando Arquivos para diretório padrão do apache"

unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
