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
#./Linux-Installer.sh nethunter  -> Para instalar o Kali NetHunter
#./Linux-Installer.sh manjaro    -> Para instalar o Manjaro
#./Linux-Installer.sh alpine     -> Para instalar o Alpine Linux
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
	proot-distro install archlinux
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

elif [ "$1" == "nethunter" ]
then
	printf "Instalando o Kali NetHunter\n"
	curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/repo-fix.sh > repo.sh
	chmod +x repo.sh
	bash repo.sh
	pkg update -y
	pkg install wget curl proot tar -y
	wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali.sh -O kali.sh
	chmod +x kali.sh
	bash kali.sh

elif [ "$1" == "manjaro" ]
then
	printf "Instalando o Manjaro\n"
	curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/repo-fix.sh > repo.sh
	chmod +x repo.sh
	bash repo.sh
	pkg update -y
	pkg install wget curl proot tar -y
	wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Manjaro/manjaro.sh -O manjaro.sh
	chmod +x manjaro.sh
	bash manjaro.sh

elif [ "$1" == "alpine" ]
then
	printf "Instalando o Alpine Linux\n"
	curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/repo-fix.sh > repo.sh
	chmod +x repo.sh
	bash repo.sh
	pkg update -y
	pkg install wget curl proot tar -y
	wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Alpine/alpine.sh -O alpine.sh
	chmod +x alpine.sh
	bash alpine.sh://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Alpine/alpine.sh
	chmod +x alpine.sh
	bash alpine.sh
fi
