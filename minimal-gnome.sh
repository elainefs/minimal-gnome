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

apt install --no-install-recommends gdm3 nautilus tilix gnome-tweaks gnome-control-center network-manager gnome-software pulseaudio shotwell vlc gnome-sushi ffmpegthumbnailer libgdk-pixbuf2.0-bin ntfs-3g sudo -y

echo "--- Instalação dos pacotes essenciais Finalizada ---"
 
echo "##### Instalação dos firmwares #####"

apt install firmware-linux firmware-linux-free firmware-linux-nonfree -y

echo "--- Instalação dos firmwares Finalizada ---"

echo "Configurações de rede..."

echo "[main]
plugins=ifupdown,keyfile

[ifupdown]
managed=true" > /etc/NetworkManager/NetworkManager.conf

echo "##### Instalação de Navegadores #####"

echo "Qual navegador você deseja instalar:
Para instalar o Google Chrome digite   1
Para instalar o Firefox digite         2
Para instalar os dois digite           3
Para não instalar nenhum digite        0"
read browser
if [ "$browser" == 1 ]; then
  apt install wget -y

  echo "##### Instalando o Google Chrome #####"

  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
  dpkg -i chrome.deb
  apt install -f -y
  rm chrome.deb

elif [ "$browser" == 2 ]; then
  echo "##### Instalando o Firefox #####"
  
  apt install --no-install-recommends firefox-esr -y

elif [ "$browser" == 3 ]; then
  echo "##### Instalando Firefox e Google Chrome #####"
  apt install firefox-esr -y

  apt install wget -y
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -O chrome.deb
  dpkg -i chrome.deb
  apt install -f -y
  rm chrome.deb

else
  echo "Você não terá nenhum navegador disponível ao finalizar a instalação."
fi

echo "##### Configurar ambiente de desenvolvimento #####"

echo "Deseja instalar o Visual Studio Code? [S/n]"
read vscode
if [ "$vscode" == "s" -o "$vscode" == "S" -o "$vscode" == "" ]; then
  echo "##### Instalando o Visual Studio Code #####"

  wget "https://go.microsoft.com/fwlink/?LinkID=760868" -O vscode.deb
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