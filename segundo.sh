#!/bin/bash

echo "Criando diretórios..."

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senhas123) -g GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senhas123) -g GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senhas123) -g GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senhas123) -g GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senhas123) -g GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senhas123) -g GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senhas123) -g GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senhas123) -g GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senhas123) -g GRP_SEC

echo "Especificando permissões dos diretórios..."

# Definindo o dono e o grupo dos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publica

# Definindo permissões dos diretórios
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "Fim..."
