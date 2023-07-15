# Script para instalação do Gnome Mínimo

## 📘 Sobre
Criei o script para instalação do Gnome no Debian, provavelmente deve funcionar em sistemas derivados. 

Para usar esse script você precisa ter feito a instalação do sistema básico, mas sem instalar nenhuma interface.

Exemplo: Na imagem abaixo, no menu de instalação do ambiente de área de trabalho do Debian 12, desmarcar todas as opções e clicar em "Continuar".

<img src="https://elaineferreira.com.br/wp-content/uploads/2023/06/019-desktop-empty.png" alt="Menu de instalação de interface gráfica no Debian 12" width=600>

[Passo a passo da instalação mínima do Gnome](https://elaineferreira.com.br/instalacao-minima-do-debian-com-gnome-desktop/)

## 🎲 Como usar
1 Após finalizar a instalação faça login como root

`su -`

2 Instale o git

`apt install git`

3 Clone esse repositório

`git clone https://github.com/elainefs/minimal-gnome.git`

4 Acesse o repositório baixado

`cd minimal-gnome`

5 Torne o arquivo de instalação executável

`chmod +x minimal-gnome.sh`

6 Inicie a instalação

`./minimal-gnome.sh`

## 📄 Licença

O conteúdo desse repositório está sob a licença do MIT. Consulte o arquivo [LICENSE](/LICENSE) para obter mais detalhes.

---

Made with <3 by [Elaine Ferreira](https://github.com/elainefs)