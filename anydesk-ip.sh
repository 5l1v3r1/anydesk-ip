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

rojo='\e[1;31m'
amarillo='\e[0;33m'
naranja='\e[38;5;166m'
verde='\033[92m'
magenta='\e[35m'
blanco='\e[97m'
ori='\e[0m'

# ================
#  Menu principal
# ================

menu() { 

clear

echo ""
echo -e "          $magenta ▄▄▄·$blanco  ▐ ▄  ▄· ▄▌·▄▄▄▄  ▄▄▄ ..▄▄ · ▄ •▄     $magenta▪   ▄▄▄·"
echo -e "          $magenta▐█ ▀█$blanco •█▌▐█▐█▪██▌██▪ ██ ▀▄.▀·▐█ ▀. █▌▄▌▪    $magenta██ ▐█ ▄█"
echo -e "          $magenta▄█▀▀█$blanco ▐█▐▐▌▐█▌▐█▪▐█· ▐█▌▐▀▀▪▄▄▀▀▀█▄▐▀▀▄·    $magenta▐█· ██▀·"
echo -e "          $magenta▐█ ▪▐▌$blanco██▐█▌ ▐█▀·.██. ██ ▐█▄▄▌▐█▄▪▐█▐█.█▌    $magenta▐█▌▐█▪·•"
echo -e "          $magenta ▀  ▀ $blanco▀▀ █▪  ▀ • ▀▀▀▀▀•  ▀▀▀  ▀▀▀▀ ·▀  ▀    $magenta▀▀▀.▀   "
echo ""
read -rsp $'                            Pulsa una tecla..\n'
ip

}

ip() {

	clear

echo ""
echo -e "          $magenta ▄▄▄·$blanco  ▐ ▄  ▄· ▄▌·▄▄▄▄  ▄▄▄ ..▄▄ · ▄ •▄     $magenta▪   ▄▄▄·"
echo -e "          $magenta▐█ ▀█$blanco •█▌▐█▐█▪██▌██▪ ██ ▀▄.▀·▐█ ▀. █▌▄▌▪    $magenta██ ▐█ ▄█"
echo -e "          $magenta▄█▀▀█$blanco ▐█▐▐▌▐█▌▐█▪▐█· ▐█▌▐▀▀▪▄▄▀▀▀█▄▐▀▀▄·    $magenta▐█· ██▀·"
echo -e "          $magenta▐█ ▪▐▌$blanco██▐█▌ ▐█▀·.██. ██ ▐█▄▄▌▐█▄▪▐█▐█.█▌    $magenta▐█▌▐█▪·•"
echo -e "          $magenta ▀  ▀ $blanco▀▀ █▪  ▀ • ▀▀▀▀▀•  ▀▀▀  ▀▀▀▀ ·▀  ▀    $magenta▀▀▀.▀   "
echo ""
	echo -e "$amarillo [$verde*$amarillo]$ori ..."
	echo -e ""
	tshark -f tcp -Y tcp.connection.syn --color



}



if ! [ $(id -u) = 0 ]; then

	echo ""
	echo -e "\e[91m[✘] Se necesita ser root para ejecutar\e[39m AnyDesk-IP\e[0m"
	echo ""
	exit

fi

menu
