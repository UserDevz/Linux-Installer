# Instalador de distribuicoes linux para termux
# Criador: MaykonDev
# Licensa: MIT License
# Data: 14/02/22

echo "INSTALADOR DE DISTRIBUICOES LINUX PARA TERMUX!"

main() {
	printf "\n\n                  MENU\n"
	echo "| 1 | Ubuntu"
	echo "| 2 | Arch Linux"
	echo "| 3 | OpenSUSE"
	echo "| 4 | Debian"
	echo "| 5 | Fedora"
	echo "| 6 | Void"
	echo "| 0 | Sair"
	echo "| 9 | Manual"

	read -p "[-]Escolha uma opcao: " opc

	if [ $opc == 1 ]
	then
		echo Instalando o Ubuntu...
		apt-get install proot-distro -y >> /dev/null
		proot-distro install ubuntu >> /dev/null
		proot-distro login ubuntu

	elif [ $opc == 2 ]
	then
		echo Instalando o Arch Linux...
		apt-get install proot-distro -y >> /dev/null
		proot-distro install archlinux >> /dev/null
		proot-distro login archlinux

	elif [ $opc == 3 ]
	then
		echo Instalando OpenSUSE
		apt-get install proot-distro -y >> /dev/null
                proot-distro install opensuse >> /dev/null
                proot-distro login opensuse

	elif [ $opc == 4 ]
	then
		echo Instalando Debian
		apt-get install proot-distro -y >> /dev/null
                proot-distro install debian  >> /dev/null
                proot-distro login debian

	elif [ $opc == 5 ]
	then
		echo Instalando Fedora
		apt-get install proot-distro -y >> /dev/null
                proot-distro install fedora >> /dev/null
                proot-distro login fedora

	elif [ $opc == 6 ]
	then
		echo Instalando Void
		apt-get install proot-distro -y >> /dev/null
                proot-distro install void >> /dev/null
                proot-distro login void

	elif [ $opc == 0 ]
	then
		echo Saindo...
		clear

	elif [ $opc == 9 ]
	then
		echo "
[manual]

Modo de uso da ferramenta é o mais simples possivel, apenas execute-a e
escolha com um numero a distribuicao que deseja instalar no seu Emulador de
terminal!

[contribuicao]

Para contribuir com o desenvolvimento da ferramenda dando dicas e ideias
chame o criador no WhatsApp: (67) 99831-8445, ou apenas deixe seu voto na
mesma que e de grande ajuda.
		"
	fi
}

main
