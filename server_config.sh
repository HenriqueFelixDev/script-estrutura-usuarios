#!/bin/bash

echo "Criando diretórios..."
sudo mkdir /publico /adm /ven /sec

echo "Criando grupos..."
sudo groupadd GRP_ADM
sudo groupadd GRP_VEN
sudo groupadd GRP_SEC

echo "Criando usuários..."
sudo useradd carlos -m -p $(openssl passwd Senha123)
sudo useradd maria -m -p $(openssl passwd Senha123)
sudo useradd joao_ -m -p $(openssl passwd Senha123)
sudo useradd debora -m -p $(openssl passwd Senha123)
sudo useradd sebastiana -m -p $(openssl passwd Senha123)
sudo useradd roberto -m -p $(openssl passwd Senha123)
sudo useradd josefina -m -p $(openssl passwd Senha123)
sudo useradd amanda -m -p $(openssl passwd Senha123)
sudo useradd rogerio -m -p $(openssl passwd Senha123)

echo "Atribuindo usuários aos grupos..."
sudo gpasswd -a carlos GRP_ADM
sudo gpasswd -a maria GRP_ADM
sudo gpasswd -a joao_ GRP_ADM
sudo gpasswd -a debora GRP_VEN
sudo gpasswd -a sebastiana GRP_VEN
sudo gpasswd -a roberto GRP_VEN
sudo gpasswd -a josefina GRP_SEC
sudo gpasswd -a amanda GRP_SEC
sudo gpasswd -a rogerio GRP_SEC

echo "Atribuindo os proprietários aos diretórios..."
sudo chown root:GRP_ADM /adm
sudo chown root:GRP_VEN /ven
sudo chown root:GRP_SEC /sec

echo "Definindo permissões aos diretórios..."
sudo chmod 777 /publico
sudo chmod 770 /adm
sudo chmod 770 /ven
sudo chmod 770 /sec

echo "Fim da Execução!"
