#!/bin/bash
echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretórios criados!"

echo "Criando grupos de usuários..."
groupadd GRP_PUB
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos de usuários criados!"

echo "Criando usuários..."
useradd carlos -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_ADM, ADM_PUB
useradd maria -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_ADM, ADM_PUB
useradd joao -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_ADM, ADM_PUB
useradd debora -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_VEN, ADM_PUB
useradd sebastiana -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_VEN, ADM_PUB
useradd roberto -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_VEN, ADM_PUB
useradd josefina -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_SEC, ADM_PUB
useradd amanda -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_SEC, ADM_PUB
useradd rogerio -m -s /bin/bash -p $(openssl passwd senhapadrao) -G GRP_SEC, ADM_PUB
echo "Usuários criados!"

echo "Definindo as permissões dos diretórios..."
chown root:GRP_PUB /pub
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chmod 777 /pub
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Permissões definidas!"
echo "Script finalizado!!!"
 
 



