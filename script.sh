#!/bin/bash

echo 'Iniciando script'

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

useradd carlos -p $(openssl passwd senha123) -G GRP_ADM -s /bin/bash -m
useradd maria -p $(openssl passwd senha123) -G GRP_ADM -s /bin/bash -m
useradd joao -p $(openssl passwd senha123) -G GRP_ADM -s /bin/bash -m

useradd debora -p $(openssl passwd senha123) -G GRP_VEN -s /bin/bash -m
useradd sebastiana -p $(openssl passwd senha123) -G GRP_VEN -s /bin/bash -m
useradd roberto -p $(openssl passwd senha123) -G GRP_VEN -s /bin/bash -m

useradd josefina -p $(openssl passwd senha123) -G GRP_SEC -s /bin/bash -m
useradd amanda -p $(openssl passwd senha123) -G GRP_SEC -s /bin/bash -m
useradd rogerio -p $(openssl passwd senha123) -G GRP_SEC -s /bin/bash -m

echo 'Script finalizado'
