# Instalador de distribuicoes linux para termux
# Criador: MaykonDev
# Licensa: MIT License
# Data: 14/02/22

echo "INSTALADOR DE DISTRIBUICOES LINUX PARA TERMUX!"

main() {
	if [ $2  "ubuntu" ]
	then
		echo Instalando o Ubuntu...
		apt-get install proot-distro -y >> /dev/null
		proot-distro install ubuntu >> /dev/null
		proot-distro login ubuntu

	elif [ $2  "arch" ]
	then
		echo Instalando o Arch Linux...
		apt-get install proot-distro -y >> /dev/null
		proot-distro install archlinux >> /dev/null
		proot-distro login archlinux

	elif [ $2  "open" ]
	then
		echo Instalando OpenSUSE
		apt-get install proot-distro -y >> /dev/null
                proot-distro install opensuse >> /dev/null
                proot-distro login opensuse

	elif [ $2  "debian" ]
	then
		echo Instalando Debian
		apt-get install proot-distro -y >> /dev/null
                proot-distro install debian  >> /dev/null
                proot-distro login debian

	elif [ $2 "fedora" ]
	then
		echo Instalando Fedora
		apt-get install proot-distro -y >> /dev/null
                proot-distro install fedora >> /dev/null
                proot-distro login fedora

	elif [ $2  "void" ]
	then
		echo Instalando Void
		apt-get install proot-distro -y >> /dev/null
                proot-distro install void >> /dev/null
                proot-distro login void

	elif [ $2 0 ]
	then
		echo Saindo...
		clear

	elif [ $2 9 ]
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

	else
		echo teste
	fi
}

main
