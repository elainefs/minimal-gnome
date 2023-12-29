#!/bin/bash

echo "Olá, você está preste a instalar o Gnome Mínimo"
echo "Deseja continuar? [S/n]"
read install
if [ "$install" == "s" -o "$install" == "S" -o "$install" == "" ]; then
echo "##### Atualizando seu sistema #####"

apt update && apt upgrade -y

echo "--- Atualização do sistema finalizada! ---"

echo "##### Instalação da Interface Gráfica Gnome Iniciada #####"

apt install --no-install-recommends gnome-session -y

echo "--- Instalação da Interface Gráfica Gnome Finalizada ---"

echo "##### Instalação dos pacotes essenciais #####"

apt install --no-install-recommends gdm3 nautilus tilix gedit gnome-tweaks gnome-control-center gnome-calculator network-manager gnome-software pulseaudio shotwell vlc gnome-sushi ffmpegthumbnailer libgdk-pixbuf2.0-bin ntfs-3g wget sudo firefox-esr -y

echo "--- Instalação dos pacotes essenciais Finalizada ---"
 
echo "##### Instalação dos firmwares #####"

apt install firmware-linux firmware-linux-free firmware-linux-nonfree -y

echo "--- Instalação dos firmwares Finalizada ---"

echo "Configurações de rede..."

echo "[main]
plugins=ifupdown,keyfile

[ifupdown]
managed=true" > /etc/NetworkManager/NetworkManager.conf

echo "##### Configurar ambiente de desenvolvimento #####"

echo "Deseja instalar o Visual Studio Code? [S/n]"
read vscode
if [ "$vscode" == "s" -o "$vscode" == "S" -o "$vscode" == "" ]; then
  echo "##### Instalando o Visual Studio Code #####"

  wget "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" -O vscode.deb
  dpkg -i vscode.deb
  apt install -f -y
  rm vscode.deb
fi

echo "Deseja instalar o Filezilla? [S/n]"
read filezilla
if [ "$filezilla" == "s" -o "$filezilla" == "S" -o "$filezilla" == "" ]; then
  echo "##### Instalando o Filezilla #####"
  apt install --no-install-recommends filezilla -y
fi

echo "Deseja instalar o Nodejs? [S/n]"
read nodejs
if [ "$nodejs" == "s" -o "$nodejs" == "S" -o "$nodejs" == "" ]; then
  echo "##### Instalando o Nodejs #####"
  apt install --no-install-recommends nodejs -y
fi

echo "Deseja instalar o Virt Manager? [S/n]"
read virtmanager
if [ "$virtmanager" == "s" -o "$virtmanager" == "S" -o "$virtmanager" == "" ]; then
  echo "##### Instalando o Virt Manager #####"
  apt install --no-install-recommends virt-manager -y
fi

echo "##### Instalar ferramentas de manipulação de imagens #####"

echo "Deseja instalar o Inkscape? [S/n]"
read inkscape
if [ "$inkscape" == "s" -o "$inkscape" == "S" -o "$inkscape" == "" ]; then
  echo "##### Instalando o Inkscape #####"
  apt install --no-install-recommends inkscape -y
fi

echo "Deseja instalar o Gimp? [S/n]"
read gimp
if [ "$gimp" == "s" -o "$gimp" == "S" -o "$gimp" == "" ]; then
  echo "##### Instalando o Gimp #####"
  apt install --no-install-recommends gimp -y
fi

user=`users`
echo "Deseja adicionar o usuário $user ao grupo sudo? [S/n]"
read addusersudo
if [ "$addusersudo" == "s" -o "$addusersudo" == "S" -o "$addusersudo" == "" ]; then
usermod -aG sudo $user
echo "$user adicionado ao grupo sudo"
fi

echo "****** Parabéns!!******
      Seu Gnome Mínimo está instalado.
Para desfrutar da sua nova instalação você precisa reiniciar o sistema."
echo "Reiniciar sistema agora? [S/n]"
read restart
if [ "$restart" == "s" -o "$restart" == "S" -o "$restart" == "" ]; then
  systemctl reboot
fi

else

echo "Instalação abortada!"

fi