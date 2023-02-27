#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e os adicionando a seus respectivos grupos..."

useradd carlos -s /bin/bash -m -p $(openssl passwd -6 "senha123") -G GRP_ADM
useradd maria -s /bin/bash -m -p $(openssl passwd -6 "senha123") -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passwd -6 "senha123") -G GRP_ADM

useradd debora -s /bin/bash -m -p $(openssl passwd -6 "senha123") -G GRP_VEN
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -6 "senha123") -G GRP_VEN
useradd roberto -s /bin/bash -m -p $(openssl passwd -6 "senha123") -G GRP_VEN

useradd josefina -s /bin/bash -m -p $(openssl passwd -6 "senha123") -G GRP_SEC
useradd amanda -s /bin/bash -m -p $(openssl passwd -6 "senha123") -G GRP_SEC
useradd rogerio -s /bin/bash -m -p $(openssl passwd -6 "senha123") -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm 
chmod 770 /ven
chmod 770 /sec 

echo "Script finalizado com SUCESSO!"






