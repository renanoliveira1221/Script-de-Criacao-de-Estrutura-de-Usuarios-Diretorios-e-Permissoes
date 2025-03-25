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

useradd carlos -p '$(openssl passwd -crypt senha123)' -G GRP_ADM -s /bin/bash
useradd maria -p '$(openssl passwd -crypt senha123)' -G GRP_ADM -s /bin/bash
useradd joao -p '$(openssl passwd -crypt senha123)' -G GRP_ADM -s /bin/bash

useradd debora -p '$(openssl passwd -crypt senha123)' -G GRP_VEN -s /bin/bash
useradd sebastiana -p '$(openssl passwd -crypt senha123)' -G GRP_VEN -s /bin/bash
useradd roberto -p '$(openssl passwd -crypt senha123)' -G GRP_VEN -s /bin/bash

useradd josefina -p '$(openssl passwd -crypt senha123)' -G GRP_SEC -s /bin/bash
useradd amanda -p '$(openssl passwd -crypt senha123)' -G GRP_SEC -s /bin/bash
useradd rogerio -p '$(openssl passwd -crypt senha123)' -G GRP_SEC -s /bin/bash

echo 'Script finalizado'
