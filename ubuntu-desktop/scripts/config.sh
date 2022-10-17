#!/bin/bash
echo "** Início da execução do script------------------------------"

# Definir Time Zone
sudo timedatectl set-timezone America/Sao_Paulo
# Atualizar o repositório
sudo apt-get update && sudo apt-get upgrade -y

echo "**** Início da instalação do Ubuntu Desktop------------------"
# Instalação mínima
sudo apt-get install -y --no-install-recommends ubuntu-desktop
# Instalação completa
# apt-get install -y ubuntu-desktop
echo "**** Fim da instalação do Ubuntu Desktop---------------------"

echo "**** Início da instalação do Firefox-------------------------"
sudo apt-get install -y firefox
echo "**** Fim da instalação do Firefox----------------------------"

echo "**** Início da instalação do VS Code-------------------------"
sudo apt-get install -y wget gpg apt-transport-https
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
# Then update the package cache and install the package using:
sudo apt-get update
sudo apt-get install -y code # or code-insiders
echo "**** Fim da instalação do VS Code----------------------------"

echo "** Fim da execução do script---------------------------------"

# Reiniciar o sistema operacional para habilitar a GUI
sudo shutdown -r now