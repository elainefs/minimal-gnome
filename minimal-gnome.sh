#!/bin/bash

echo "Olá, você está preste a instalar o Gnome Mínimo"
echo "Deseja continuar? (s/n)"
read install
if [ "$install" == "s" -o "$install" == "S" -o "$install" == "" ]; then
echo "##### Atualizando seu sistema #####"

apt update && apt upgrade -y

echo "--- Atualização do sistema finalizada! ---"

echo "##### Instalação da Interface Gráfica Gnome Iniciada #####"

apt install --no-install-recommends gnome-session -y

echo "--- Instalação da Interface Gráfica Gnome Finalizada ---"

echo "##### Instalação dos pacotes essenciais #####"

apt install --no-install-recommends gdm3 seahorse nautilus tilix gnome-tweaks gnome-control-center network-manager gnome-software pulseaudio firefox-esr shotwell cheese vlc ffmpegthumbnailer libgdk-pixbuf2.0-bin ntfs-3g sudo -y

echo "--- Instalação dos pacotes essenciais Finalizada ---"
 
echo "##### Instalação dos firmwares #####"

apt install firmware-linux firmware-linux-free firmware-linux-nonfree -y

echo "--- Instalação dos firmwares Finalizada ---"


echo "Configurações de rede..."

echo "[main]
plugins=ifupdown,keyfile

[ifupdown]
managed=true" > /etc/NetworkManager/NetworkManager.conf

user=`users`
echo "Deseja adicionar o usuário $user ao grupo sudo? (s/n)"
read addusersudo
if [ "$addusersudo" == "s" -o "$addusersudo" == "S" -o "$addusersudo" == "" ]; then
usermod -aG sudo $user
echo "$user adicionado ao grupo sudo"
fi

echo "****** Parabéns!!******
      Seu Gnome Mínimo está instalado.
Para desfrutar da sua nova instalação você precisa reiniciar o sistema."
echo "Reiniciar sistema agora? (s/n)"
read restart
if [ "$restart" == "s" -o "$restart" == "S" -o "$restart" == "" ]; then
  systemctl reboot
fi

else

echo "Instalação abortada!"

fi

