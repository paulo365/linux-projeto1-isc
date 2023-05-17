#!/bin/bash

echo " bem vindo"


echo " inicando atualização do sistema............"

apt update -y


apt upgrade -y

echo "atualizacao concluida"
echo " incicando instalacao do uzip..............."

apt install unzip -y


echo " finalizado instalacao do unzip"


echo " instalando o servico web..................."

apt install apache2 -y

echo " finalizado instalacao do apache2"

echo " instalando o wget ........."

apt install wget -y

echo " finalizado "



echo " -------------------------------------------------------------------------------------------------------"



 echo " fazendo donwload do arquivo........"

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

cd /scripts/

unzip /tmp/main.zip

rm /var/www/html/index.html

cp -r /scripts/linux-site-dio-main/* /var/www/html/

systemctl restart apache2

                                
