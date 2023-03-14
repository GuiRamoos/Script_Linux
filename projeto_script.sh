#!/bin/bash

echo 'Criando os diretórios'

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo 'Criando os grupos'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo 'Criando Usuários'

adduser carlos -c 'Carlos Augusto' =s /bin/bash -m -p$(openssl passwd -crypt Senha123)
adduser maria -c 'Maria Paixão' =s /bin/bash -m -p$(openssl passwd -crypt Senha123)
adduser joao -c 'João Pedro' =s /bin/bash -m -p$(openssl passwd -crypt Senha123)
adduser debora -c 'Debora Santana' =s /bin/bash -m -p$(openssl passwd -crypt Senha123)
adduser sebastiana -c 'Sebastiana Santos ' =s /bin/bash -m -p$(openssl passwd -crypt Senha123)
adduser roberto -c 'Roberto Carlos' =s /bin/bash -m -p$(openssl passwd -crypt Senha123)
adduser josefina -c 'Josefina Pereira' =s /bin/bash -m -p$(openssl passwd -crypt Senha123)
adduser amanda -c 'Amanda Nunes' =s /bin/bash -m -p$(openssl passwd -crypt Senha123)
adduser rogerio -c 'Rogerio Valadao' =s /bin/bash -m -p$(openssl passwd -crypt Senha123)
 

echo 'adicionando usúarios aos seus respectivos grupos'

usermod -G GRP_ADM carlos 
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo 'Alterando permissões de um diretório'

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /publico/ 

echo 'Fim...'





