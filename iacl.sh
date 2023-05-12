#!/bin/bash

# Cria os diretórios /publico, /adm, /ven e /sec com permissão de root
mkdir /publico /adm /ven /sec
chown root /publico /adm /ven /sec

# Cria os usuários carlos, maria, joao, debora, sebastiana, roberto, josefina, amanda e rogerio
# Cria uma pasta pessoal para cada usuário no diretório home
# Define a senha como Senha123 e requer que a senha seja alterada no primeiro login
useradd carlos -m -s /bin/bash -p $(openssl passw -crypt Senha123)
useradd maria -m -s /bin/bash -p $(openssl passw -crypt Senha123)
useradd joao -m -s /bin/bash -p $(openssl passw -crypt Senha123)

useradd debora -m -s /bin/bash -p $(openssl passw -crypt Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passw -crypt Senha123)
useradd roberto -m -s /bin/bash -p $(openssl passw -crypt Senha123)

useradd josefina -m -s /bin/bash -p $(openssl passw -crypt Senha123)
useradd amanda -m -s /bin/bash -p $(openssl passw -crypt Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passw -crypt Senha123)

# Define permissão de leitura, escrita e gravação na pasta /publico para todos os usuários
chmod 777 /publico

# Cria os grupos GRP_ADM, GRP_VEN e GRP_SEC
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Define permissão de leitura, gravação e execução para os grupos GRP_ADM, GRP_VEN e GRP_SEC nas pastas correspondentes
chmod 770 /adm /ven /sec
chgrp GRP_ADM /adm
chgrp GRP_VEN /ven
chgrp GRP_SEC /sec

# Adiciona os usuários aos grupos correspondentes
usermod -aG GRP_ADM carlos
usermod -aG GRP_ADM maria
usermod -aG GRP_ADM joao
usermod -aG GRP_VEN debora
usermod -aG GRP_VEN sebastiana
usermod -aG GRP_VEN roberto
usermod -aG GRP_SEC josefina
usermod -aG GRP_SEC amanda
usermod -aG GRP_SEC rogerio
