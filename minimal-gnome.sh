#!/bin/bash

echo "Olá, você está preste a instalar o Gnome Mínimo"
echo "Deseja continuar? (s/n)"
read install
if [ "$install" == "s" ]; then
echo "##### Atualizando seu sistema #####"

apt update && apt upgrade -y

echo "--- Atualização do sistema finalizada! ---"

echo "##### Instalação da Interface Gráfica Gnome Iniciada #####"

apt install --no-install-recommends gnome-session 

echo "--- Instalação da Interface Gráfica Gnome Finalizada ---"

echo "##### Instalação dos pacotes essenciais #####
Os seguintes pacotes serão instalados:"

apt install --no-install-recommends gdm3 seahorse nautilus tilix gnome-tweaks gnome-control-center network-manager gnome-software pulseaudio firefox-esr shotwell cheese vlc ffmpegthumbnailer libgdk-pixbuf2.0-bin ntfs-3g sudo

echo "--- Instalação dos pacotes essenciais Finalizada ---"
 
echo "##### Instalação dos firmwares #####"

apt install firmware-linux firmware-linux-free firmware-linux-nonfree

echo "--- Instalação dos firmwares Finalizada ---"

echo "Parabéns!! Seu Gnome Mínimo está instalado.
Para desfrutar da sua nova instalação você precisa reiniciar o sistema."
echo "Reiniciar sistema agora? (s/n)"
read restart
if [ "$restart" == "s" ]; then
  systemctl reboot
fi

else

echo "Instalação abortada!"

fi

