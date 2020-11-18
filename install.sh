#!/bin/bash
#
#=====================================
#
# Autor: wrrulos
# Script: Anydesk-IP
# Version: 1.0
# Github: https://github.com/wrrulos/anydesk-ip
#
# Discord: Rulo#9224
# Instagram: @wrrulos
# Twitter: @wrrulos
#
#=====================================
#
# WFYCO - Waiting for you come out
#
# Discord: discord.gg/HtCHzDV
# Instagram: @wfyco_team
# Twitter: @wfyco_team
#
#=====================================

# ================
#  Colores
# ================

rojo='\e[1;31m'
amarillo='\e[0;33m'
naranja='\e[38;5;166m'
verde='\033[92m'
magenta='\e[38;5;203m'
blanco='\e[97m'
ori='\e[0m'

# ================
#  Banner
# ================

banner() { 

clear

echo ""
echo -e "          $magenta ▄▄▄·$blanco  ▐ ▄  ▄· ▄▌·▄▄▄▄  ▄▄▄ ..▄▄ · ▄ •▄     $magenta▪   ▄▄▄·"
echo -e "          $magenta▐█ ▀█$blanco •█▌▐█▐█▪██▌██▪ ██ ▀▄.▀·▐█ ▀. █▌▄▌▪    $magenta██ ▐█ ▄█"
echo -e "          $magenta▄█▀▀█$blanco ▐█▐▐▌▐█▌▐█▪▐█· ▐█▌▐▀▀▪▄▄▀▀▀█▄▐▀▀▄·    $magenta▐█· ██▀·"
echo -e "          $magenta▐█ ▪▐▌$blanco██▐█▌ ▐█▀·.██. ██ ▐█▄▄▌▐█▄▪▐█▐█.█▌    $magenta▐█▌▐█▪·•"
echo -e "          $magenta ▀  ▀ $blanco▀▀ █▪  ▀ • ▀▀▀▀▀•  ▀▀▀  ▀▀▀▀ ·▀  ▀    $magenta▀▀▀.▀   "
echo ""
echo -e "$amarillo[#]$ori Comprobando estado de la red..."
sleep 2
internet


}

internet(){

	ping -c 1 google.com > /dev/null 2>&1

	if [[ "$?" == 0 ]]; then
		echo ""
		echo -e "$amarillo[$verde✔$amarillo]$ori Estado de la red................$amarillo[$verde OK $amarillo]"
		sleep 2
		verificar
	else
		echo ""
		echo -e "$amarillo[$rojo!$amarillo]$ori Estado de la red.........$amarillo[$rojo NOT FOUND $amarillo]"
		echo ""
		exit
	fi
}

verificar() {

	echo ""
	echo -e "$amarillo[#]$ori Comprobando si tshark esta instalado..."
	sleep 2
	cd / && cd usr/bin/ && stat tshark>null

	if [ "$?" -eq "0" ]; then

		echo ""
		echo -e "$amarillo[$verde✔$amarillo]$ori tshark................$amarillo[$verde OK $amarillo]"
		echo ""
		sleep 2
		echo -e "$amarillo[#]$ori Ejecuta el script con sudo bash anydesk-ip.sh $ori"
		echo ""

	elif [ "$?" -eq "1" ]; then

		echo ""
		echo -e "$amarillo[$rojo!$amarillo]$ori tshark........$amarillo[$rojo NOT FOUND $amarillo]"
		sleep 2
		instalartshark

	fi
}

instalartshark() {

	echo ""
	echo -e "$amarillo[#]$ori Instalando tshark..."
	echo ""
	sleep 2
	sudo apt install -y tshark
	echo ""
	echo -e "$amarillo[#]$ori Ejecuta el script con sudo bash anydesk-ip.sh $ori"
	echo ""
}



ip(){

	clear

	echo ""
	echo -e "           ▄▄▄·  ▐ ▄  ▄· ▄▌·▄▄▄▄  ▄▄▄ ..▄▄ · ▄ •▄     ▪   ▄▄▄·"
	echo -e "          ▐█ ▀█ •█▌▐█▐█▪██▌██▪ ██ ▀▄.▀·▐█ ▀. █▌▄▌▪    ██ ▐█ ▄█"
	echo -e "          ▄█▀▀█ ▐█▐▐▌▐█▌▐█▪▐█· ▐█▌▐▀▀▪▄▄▀▀▀█▄▐▀▀▄·    ▐█· ██▀·"
	echo -e "          ▐█ ▪▐▌██▐█▌ ▐█▀·.██. ██ ▐█▄▄▌▐█▄▪▐█▐█.█▌    ▐█▌▐█▪·•"
	echo -e "           ▀  ▀ ▀▀ █▪  ▀ • ▀▀▀▀▀•  ▀▀▀  ▀▀▀▀ ·▀  ▀    ▀▀▀.▀   "
	echo ""
	echo -e " [*] ..."
	echo -e ""
	tshark -f tcp -Y tcp.connection.syn



}



if ! [ $(id -u) = 0 ]; then

	echo ""
	echo -e "\e[91m[✘] Se necesita ser root para ejecutar\e[39m install.sh\e[0m"
	echo ""
	exit

fi

banner

