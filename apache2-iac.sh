#/bin/bash

# Atualizar lista de pacotes
apt update

# Atualizar pacotes
apt upgrade -y

# Instalar Apache e descompactador
apt install apache2 unzip wget -y

# Baixar aplicação no /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp

# Descompactar arquivo
unzip /tmp/main.zip

# Mover arquivos para /var/www/html
cp -rp /tmp/main/* /var/www/html/

# Reiniciar apache2
systemctl apache2 restart
