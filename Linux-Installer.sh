# Linux-Installer para Termux
# Criador: UserDevz
# Licensa: MIT License
#
# -> MODO DE USO:
#./Linux-Installer.sh archlinux  -> Para instalar o Arch Linux
#./Linux-Installer.sh ubuntu     -> Para instalar o Ubuntu
#./Linux-Installer.sh debian     -> Para instalar o Debian
#./Linux-Installer.sh fedora     -> Para instalar o Fedora
#./Linux-Installer.sh void       -> Para instalar o Void Linux
#
# Instalando o proot-distro para economizar servico hehe
pkg install proot-distro >> /dev/null

# PARA USUARIOS:
# • Quem ficou em duvida com minha ferramenta, recomendo que leem um pouco
# sobre o Proot distro, que e a tecnologia que eu estou usando para
# automacao da instalacao dos emuladores de ambientes linux!

if [ "$1" ==  "archlinux" ]
then
	printf "Instalando o Arch Linux\n"
	proot-distro install archlinux >> /dev/null
	proot-distro login archlinux

elif [ "$1" == "ubuntu" ]
then
	printf "Instalando o Ubuntu\n"
	proot-distro install ubuntu
	proot-distro login ubuntu

elif [ "$1" == "debian" ]
then
	printf "Instalando o Debian\n"
	proot-distro install debian
	proot-distro login debian

elif [ "$1" == "fedora" ]
then
	printf "Instalando o Fedora Linux\n"
	proot-distro install fedora
	proot-distro login fedora

elif [ "$1" == "void" ]
then
	printf "Instalando o Void Linux\n"
	proot-distro install void
	proot-distro login void
fi
