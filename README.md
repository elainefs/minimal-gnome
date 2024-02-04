<div align="center">
  <h1>Script de Instalação do Gnome Mínimo</h1>
  <img src="https://img.shields.io/github/repo-size/elainefs/minimal-gnome">
 <img src="https://img.shields.io/github/languages/top/elainefs/minimal-gnome"> 
  <img src="https://img.shields.io/github/last-commit/elainefs/minimal-gnome?color=blue">
  <img src="https://img.shields.io/github/license/elainefs/minimal-gnome?color=blue">
  <br>
  <br>
  <img src="https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black">
</div>

## 📘 Sobre

Script para instalação do ambiente de trabalho Gnome na versão mínima no Debian, em que apenas a interface gráfica e alguns pacotes essenciais são instalados.

<div align='center'>
<h5>Instalação Padrão vs Instalação Mínima</h5>

![Comparação da instalação padrão e instalação mínima](https://lh3.googleusercontent.com/pw/ADCreHdRjQ1dGMEg19BgLXKe-RqUk0tlmPMNmJp_iDWLyvvwFDSftXigUPShcEFaR3MdEo0SfMm68YxY5SNQwTkG35E7u4ECn0NcBLO2ZAnz4fAh23dZkwpLvVjLpoHX6vjJr4iSPrGfq47aG7mBqfsuuk5D=w909-h268-s-no?authuser=1)

</div>

## 🎲 Como usar

Para usar esse script você precisa ter feito a instalação do sistema básico, mas sem instalar nenhuma interface.

Exemplo: Na imagem abaixo, no menu de instalação do ambiente de área de trabalho do Debian, desmarcar todas as opções e clicar em "Continuar".

<img src="https://lh3.googleusercontent.com/pw/ADCreHfitEFazyO9nJ2Cwzx-VR0IYXs7DUuACuv5L1IOxfyMvJgOB-a47Me6LQDNZ5MuwgD_i-D9TUYsrhmrfIOd7nbsSw4g4OxLfd8lN4kNPjqVs8E3wZ8Gih7RUywf37IHWvD_2JwI_3Xtpdm1Sn7G0doB=w803-h595-s-no?authuser=1" alt="Menu de instalação de interface gráfica no Debian 12" width=600>

[Passo a passo da instalação mínima do Gnome](https://elaineferreira.com.br/instalacao-minima-do-debian-com-gnome-desktop)

### Como executar o script

1 Após finalizar a instalação faça login como root

`su -`

2 Instale o git

`apt install git -y`

3 Clone esse repositório

`git clone https://github.com/elainefs/minimal-gnome.git`

4 Acesse o repositório baixado

`cd minimal-gnome`

5 Torne o arquivo de instalação executável

`chmod +x install.sh`

6 Inicie a instalação

`./install.sh`

### Recursos opcionais

Durante o processo de instalação você terá a opção de instalar ou não os seguintes recursos:

- Suporte a Flatpak
- Suporte a Snap e Snap Store
- Visual Studio Code
- Filezilla
- Nodejs
- Virt Manager
- Inkscape
- Gimp

## 📄 Licença

O conteúdo desse repositório está sob a licença do MIT. Consulte o arquivo [LICENSE](/LICENSE) para obter mais detalhes.

---

Made with ❤️ by [Elaine Ferreira](https://github.com/elainefs)
