#! /bin/bash


mkdir /projeto

mkdir /projeto/publico
mkdir /projeto/adm
mkdir /projeto/ven
mkdir /projeto/sec


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

useradd carlos -c "carlos" -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd maria -c "maria" -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd joao -c "joao" -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd debora -c "debora" -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd sebastiana -c "sebastiana" -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd roberto -c "roberto" -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd josefina -c "josefina" -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd rogerio -c "rogerio" -m -s /bin/bash -p $(openssl passwd -6 senha123)
useradd amanda -c "amanda" -m -s /bin/bash -p $(openssl passwd -6 senha123)


usermod -G GRP_ADM joao
usermod -G GRP_ADM maria
usermod -G GRP_ADM carlos

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio


chown root:GRP_ADM /projeto/adm
chown root:GRP_VEN /projeto/ven
chown root:GRP_SEC /projeto/sec


chmod 777 /projeto/publico
chmod 770 /projeto/adm
chmod 770 /projeto/ven
chmod 770 /projeto/sec



