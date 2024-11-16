#!/bin/bash

# Create directories
echo "Creating directories..."
mkdir -p /publica /adm /ven /sec

# Create groups
echo "Creating groups..."
groupadd GRP_ADM GRP_VEN GRP_SEC

# Create users with hashed passwords
echo "Creating users..."
useradd -m -s /bin/bash -p "$(openssl passwd -crypt secret_password)" -g GRP_ADM carlos maria joao
useradd -m -s /bin/bash -p "$(openssl passwd -crypt secret_password)" -g GRP_VEN debora sebastiana roberto
useradd -m -s /bin/bash -p "$(openssl passwd -crypt secret_password)" -g GRP_SEC josefina amanda rogerio

# Set directory permissions
echo "Setting directory permissions..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm /ven /sec
chmod 777 /publica

echo "Finished."