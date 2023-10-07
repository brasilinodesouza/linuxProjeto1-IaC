#!/bin/bash

echo "Criando diretorios"
mkdir /adm
mkdir /ven
mkdir /sec
mkdir /publica


echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuarios ADM"
useradd carlos -m -s /bin/bash  -p $(openssl passwd 172)
usermod -G GRP_ADM carlos

useradd maria -m -s /bin/bash  -p $(openssl passwd 1725)
usermod -G GRP_ADM maria

useradd joao -m -s /bin/bash  -p $(openssl passwd 1725)
usermod -G GRP_ADM joao


echo "Criando usuarios VEN"
useradd debora -m -s /bin/bash  -p $(openssl passwd 1725)
usermod -G GRP_VEN debora

useradd sebastiana -m -s /bin/bash  -p $(openssl passwd 1725)
usermod -G GRP_VEN sebastiana

useradd roberto -m -s /bin/bash  -p $(openssl passwd 1725)
usermod -G GRP_VEN roberto


echo "Criando usuarios SEC"
useradd josefina -m -s /bin/bash  -p $(openssl passwd 1725) -G GRP_SEC

useradd amanda -m -s /bin/bash  -p $(openssl passwd 1725) -G GRP_SEC

useradd rogerio -m -s /bin/bash  -p $(openssl passwd 1725) -G GRP_SEC


echo "Liberacao de diretorios"
chmod 777 /publica
chmod 700 /adm
chmod 700 /ven
chmod 700 /sec



echo "FIM!!!!"

