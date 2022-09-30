#!/bin/bash


# BOJE

BLUE='\e[1;34m'              # BLUE
GREEN='\e[1;32m'              # GREEN
YELLOW='\e[1;33m'              # YELLOW
WHITE='\e[1;37m'              # WHITE
DEFAULT='\e[0m'              # DEFAULT COLOR
$(basename $NAME) 

clear
echo -e "${YELLOW} ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ███████╗██████╗ ${DEFAULT}"
echo -e "${YELLOW} ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██╔════╝██╔══██╗${DEFAULT}"
echo -e "${YELLOW} ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     █████╗  ██████╔╝${DEFAULT}"
echo -e "${YELLOW} ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██╔══╝  ██╔══██╗${DEFAULT}"
echo -e "${YELLOW} ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗███████╗██║  ██║${DEFAULT}"
echo -e "${YELLOW} ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝${DEFAULT}"
sleep 1
clear  
sleep 1                                                                                                      
echo -e "\e[1;32m*******************************************************************\e[0m"
echo -e "\e[1;32m \e[0m        \e[1mAuto Installer                                  \e[0m                 \e[1;32m \e[0m"
echo -e "\e[1;32m*******************************************************************\e[0m"
echo -e "\e[1;32m                                                                  \e[1;32m \e[0m"
echo -e "\e[1;32m \e[0m \e[1m1. \e[0m Ubuntu 18.04                                 \e[1;32m \e[0m"
echo -e "\e[1;32m \e[0m \e[1m2. \e[0m Exit                                         \e[1;32m \e[0m"
echo -e "\e[1;32m                                                                  \e[1;32m \e[0m"
echo -e "\e[1;32m*******************************************************************\e[0m"
echo ""
read -p "Select an option: " sys


if [ "$sys" = "3" ]; then
  clear
  echo -e "${WHITE}Script coded by ${YELLOW}Not Rengele${DEFAULT}"
  sleep 1
  wget https://WAF Auto Installer/deb10.sh;chmod 777 deb10.sh;sed -i -e 's/\r$//' deb10.sh;./deb10.sh

elif [ "$sys" = "2" ]; then
  clear
  echo -e "${WHITE}Script coded by ${YELLOW}Not Rengele${DEFAULT}"
  sleep 1
  wget https://WAF Auto Installer/deb9.sh;chmod 777 deb9.sh;sed -i -e 's/\r$//' deb9.sh;./deb9.sh

elif [ "$sys" = "1" ]; then
  clear
  echo -e "${WHITE}Script coded by ${YELLOW}Not Rengele${DEFAULT}"
  sleep 1
  wget https://WAF Auto Installer/ubnt18.sh;chmod 777 ubnt18.sh;sed -i -e 's/\r$//' ubnt18.sh;./ubnt18.sh

elif [ "$sys" = "4" ]; then
  clear
  echo -e "${WHITE}Script coded by ${YELLOW}Not Rengele${DEFAULT}"
  sleep 1
  wget https://WAF Auto Installer/ubnt16.sh;chmod 777 ubnt16.sh;sed -i -e 's/\r$//' ubnt16.sh;./ubnt16.sh

elif [ "$sys" = "2" ]; then
  clear
  echo -e "${WHITE}Thanks for using the script. ${YELLOW}Not Rengele, TeamSpeak3 IP: hypergaming ${DEFAULT}"
else
  clear
  echo -e "${WHITE}Bad option selected, starting again.${DEFAULT}"
  sleep 1
  clear
  ./start.sh
fi



