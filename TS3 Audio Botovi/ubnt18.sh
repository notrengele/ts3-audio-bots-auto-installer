#!/bin/bash


# BOJE

BLUE='\e[1;34m'              # BLUE
GREEN='\e[1;32m'              # GREEN
YELLOW='\e[1;33m'              # YELLOW
WHITE='\e[1;37m'              # WHITE
DEFAULT='\e[0m'              # DEFAULT COLOR

VERSION="1.0"               # VERSION OF SCRIPT
HOSTNAME=$(hostname)         # HOSTNAME OF USER

function InstallPackages() {
	sleep 1
	clear
	echo -e "${WHITE}Packages are now being installed.${DEFAULT}"
	sleep 0.5
	clear
	apt-get install sudo -y
	clear
	sudo apt-get install zip unzip screen figlet git -y
	clear
}

function Finish() {
  clear
  echo -e "${WHITE}Thanks for using, ${YELLOW}Auto Installer${DEFAULT}"
}


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
rm -rf start.sh
clear
echo -e "\e[1;32m*******************************************************************\e[0m"
echo -e "\e[1;32m \e[0m        \e[1mAuto Installer                                  \e[0m                 \e[1;32m \e[0m"
echo -e "\e[1;32m*******************************************************************\e[0m"
echo -e "\e[1;32m                                                                  \e[1;32m \e[0m"
echo -e "\e[1;32m \e[0m \e[1m1. \e[0m TS3AudioBot Installation                     \e[1;32m \e[0m"
echo -e "\e[1;32m \e[0m \e[1m2. \e[0m TeamSpeak3 Server Installation               \e[1;32m \e[0m"
echo -e "\e[1;32m \e[0m \e[1m3. \e[0m SinusBot Unlimited                           \e[1;32m \e[0m"
echo -e "\e[1;32m \e[0m \e[1m4. \e[0m Firewall configure                           \e[1;32m \e[0m"
echo -e "\e[1;32m \e[0m \e[1m5. \e[0m Exit                                         \e[1;32m \e[0m"
echo -e "\e[1;32m                                                                  \e[1;32m \e[0m"
echo -e "\e[1;32m*******************************************************************\e[0m"
echo ""
read -p "Select an option: " deb10

if [ "$deb10" = "1" ]; then
  clear
  echo -e "${WHITE}Script coded by ${YELLOW}Auto Installer${DEFAULT}"
  InstallPackages
  echo -e "${WHITE}Prepairing installation.${DEFAULT}"
  sleep 0.5
  clear
  wget -O- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
  sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
  wget https://packages.microsoft.com/config/debian/10/prod.list
  sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
  sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
  sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list

  sudo apt-get update
  sudo apt-get install apt-transport-https -y
  sudo apt-get update
  sudo apt-get install dotnet-sdk-3.1 -y
  sudo apt-get install git clone

  sudo apt-get update
  sudo apt-get install apt-transport-https -y
  sudo apt-get update
  sudo apt-get install aspnetcore-runtime-3.1 -y

  sudo apt-get update
  sudo apt-get install apt-transport-https -y
  sudo apt-get update
  sudo apt-get install dotnet-runtime-3.1 -y
  sudo apt-get install youtube-dl -y
  sudo apt-get install python-pip -y
  sudo pip install youtube-dl -y
  sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl
  sudo chmod a+x /usr/local/bin/youtube-dl
  hash -r
  sudo youtube-dl -U
  clear
  sudo apt-get install libopus-dev ffmpeg -y
  echo "${WHITE}Where you want ${YELLOW}TS3AudioBot ${WHITE}to be?${DEFAULT}"
  echo -e "${WHITE}Example: ${YELLOW}/home/TS3AudioBot${DEFAULT}"
  echo ""
  read -p "Enter location: " location

  mkdir $location
  cd $location
  cd $location
  echo -e "${WHITE}Starting download...${DEFAULT}"
  sleep 1

  git clone https://github.com/notrengele/ts3_audiobots.git
  dotnet build --framework netcoreapp2.2 --configuration Release TS3AudioBot

  wget https://github.com/Splamy/TS3AudioBot/releases/download/0.11.0/TS3AudioBot_dotnet_core_3.1.zip
  unzip TS3AudioBot_dotnet_core_3.1.zip
  screen -mdS ts3ab dotnet TS3AudioBot.dll
  
  clear
  sleep 2
  echo -e "${WHITE}TS3AudioBot Installed!"
  echo "Location:${DEFAULT} $location"
  echo ""
  echo -e "${WHITE}Hvala vam na koriscenju scripte: notrengele :)${DEFAULT}"
  echo -e "${YELLOW}--> ${WHITE}Auto Installer${DEFAULT}"


  sleep 3
  clear
  echo -e "${WHITE} Starting bot...${DEFAULT}"
  clear
  echo -e "${GREEN}"
  figlet 3
  sleep 1
  clear
  echo -e "${YELLOW}"
  figlet 2
  sleep 1
  clear
  echo -e "${WHITE}"
  figlet 1
  sleep 1
  clear
  echo -e "${BLUE}"
  figlet 0
  sleep 1
  echo -e"${DEFAULT}"
  screen -x ts3ab
  Finish

elif [ "$deb10" = "2" ]; then
  clear
  echo -e "${WHITE}Script coded by ${YELLOW}Auto Installer${DEFAULT}"
  InstallPackages
  apt-get install sudo -y
  sudo apt-get install zip unzip wget tar -y
  clear
  echo "${WHITE}Where you want ${YELLOW}TeamSpeak ${WHITE}to be?${DEFAULT}"
  echo -e "${WHITE}Example: ${YELLOW}/home/TS3AudioBot${DEFAULT}"
  echo ""
  read -p "Enter location: " location
  clear
  mkdir $location
  cd $location
  cd $location
  wget https://files.teamspeak-services.com/releases/server/3.12.1/teamspeak3-server_linux_amd64-3.12.1.tar.bz2
  tar -xf teamspeak3-server_linux_amd64-3.12.1.tar.bz2
  rm -rf teamspeak3-server_linux_amd64-3.12.1.tar.bz2
  cd teamspeak3-server_linux_amd64
  chmod 777 *
  touch .ts3server_license_accepted
  clear
  echo -e "${WHITE}Starting TeamSpeak 3 server...${DEFAULT}"
  ./ts3server_startscript.sh start

elif [ "$deb10" = "3" ]; then
	InDev

elif [ "$deb10" = "4" ]; then
	clear
    echo -e "\e[1;32m*******************************************************************\e[0m"
    echo -e "\e[1;32m \e[0m        \e[1mAuto Installer                           \e[0m                 \e[1;32m \e[0m"
    echo -e "\e[1;32m*******************************************************************\e[0m"
    echo -e "\e[1;32m                                                                  \e[1;32m \e[0m"
    echo -e "\e[1;32m \e[0m \e[1m1. \e[0m TeamSpeak 3 Server                           \e[1;32m \e[0m"
    echo -e "\e[1;32m \e[0m \e[1m2. \e[0m Valve Games                                  \e[1;32m \e[0m"
    echo -e "\e[1;32m \e[0m \e[1m3. \e[0m San Andreas Multi Player                     \e[1;32m \e[0m"
    echo -e "\e[1;32m \e[0m \e[1m5. \e[0m Exit                                         \e[1;32m \e[0m"
    echo -e "\e[1;32m                                                                  \e[1;32m \e[0m"
    echo -e "\e[1;32m*******************************************************************\e[0m"
    echo ""
    read -p "Select an option: " firewall

    if [ "$firewall" = "1" ]; then
    	clear
    	read -p "Enter voice port of server (etc. 9987) " voice
    	clear
    	read -p "Enter file transfer port (etc. 30033) " filet
    	clear
    	read -p "Enter Query port of server (etc. 10011) " query 
    	clear
    	read -p "Enter SSH port (etc. 22) " ssh 
    	clear
    	echo -e "${WHITE}Configuring firewall... All other ports are going to close!${DEFAULT}"
    	sleep 0.5
    	clear  
    	iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN FIN,SYN -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags SYN,RST SYN,RST -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,RST FIN,RST -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,ACK FIN -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,URG URG -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,FIN FIN -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,PSH PSH -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL ALL -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL NONE -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL FIN,PSH,URG -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,FIN,PSH,URG -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
        iptables -t mangle -A PREROUTING -s 224.0.0.0/3 -j DROP 
        iptables -t mangle -A PREROUTING -s 169.254.0.0/16 -j DROP 
        iptables -t mangle -A PREROUTING -s 172.16.0.0/12 -j DROP 
        iptables -t mangle -A PREROUTING -s 192.0.2.0/24 -j DROP 
        iptables -t mangle -A PREROUTING -s 192.168.0.0/16 -j DROP 
        iptables -t mangle -A PREROUTING -s 10.0.0.0/8 -j DROP 
        iptables -t mangle -A PREROUTING -s 0.0.0.0/8 -j DROP 
        iptables -t mangle -A PREROUTING -s 240.0.0.0/5 -j DROP 
        iptables -t mangle -A PREROUTING -s 127.0.0.0/8 ! -i lo -j DROP
        iptables -t mangle -A PREROUTING -p icmp -j DROP
        iptables -A INPUT -p tcp -m connlimit --connlimit-above 80 -j REJECT --reject-with tcp-reset
        iptables -A INPUT -p tcp -m conntrack --ctstate NEW -m limit --limit 60/s --limit-burst 20 -j ACCEPT 
        iptables -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP
        iptables -t mangle -A PREROUTING -f -j DROP
        iptables -A INPUT -p tcp --tcp-flags RST RST -m limit --limit 2/s --limit-burst 2 -j ACCEPT 
        iptables -A INPUT -p tcp --tcp-flags RST RST -j DROP
        iptables -N port-scanning  
        iptables -A port-scanning -p tcp --tcp-flags SYN,ACK,FIN,RST RST -m limit --limit 1/s --limit-burst 2 -j RETURN 
        iptables -A port-scanning -j DROP
        iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --update --seconds 60 --hitcount 10 -j DROP 
        iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --set 
        iptables -I INPUT -p udp --dport $voice -j ACCEPT
        iptables -I INPUT -p udp --sport $voice -j ACCEPT
        iptables -I INPUT -p tcp --dport $query -j ACCEPT
        iptables -I INPUT -p tcp --sport $query -j ACCEPT
        iptables -I INPUT -p tcp --sport $filet -j ACCEPT
        iptables -I INPUT -p tcp --sport $filet -j ACCEPT
        iptables -I INPUT -p tcp --sport $ssh -j ACCEPT
        iptables -I INPUT -p tcp --sport $ssh -j ACCEPT
        clear
        echo -e "${WHITE}Firewall configured!${DEFAULT}"
    elif [ "$firewall" = "2" ]; then
    	clear
    	read -p "Enter port of game-server (etc. 27015) " valve
    	clear
    	read -p "Enter SSH port (etc. 22) " ssh 
    	clear
    	echo -e "${WHITE}Configuring firewall... All other ports are going to close!${DEFAULT}"
    	sleep 0.5
    	clear  
    	iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN FIN,SYN -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags SYN,RST SYN,RST -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,RST FIN,RST -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,ACK FIN -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,URG URG -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,FIN FIN -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,PSH PSH -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL ALL -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL NONE -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL FIN,PSH,URG -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,FIN,PSH,URG -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
        iptables -t mangle -A PREROUTING -s 224.0.0.0/3 -j DROP 
        iptables -t mangle -A PREROUTING -s 169.254.0.0/16 -j DROP 
        iptables -t mangle -A PREROUTING -s 172.16.0.0/12 -j DROP 
        iptables -t mangle -A PREROUTING -s 192.0.2.0/24 -j DROP 
        iptables -t mangle -A PREROUTING -s 192.168.0.0/16 -j DROP 
        iptables -t mangle -A PREROUTING -s 10.0.0.0/8 -j DROP 
        iptables -t mangle -A PREROUTING -s 0.0.0.0/8 -j DROP 
        iptables -t mangle -A PREROUTING -s 240.0.0.0/5 -j DROP 
        iptables -t mangle -A PREROUTING -s 127.0.0.0/8 ! -i lo -j DROP
        iptables -t mangle -A PREROUTING -p icmp -j DROP
        iptables -A INPUT -p tcp -m connlimit --connlimit-above 80 -j REJECT --reject-with tcp-reset
        iptables -A INPUT -p tcp -m conntrack --ctstate NEW -m limit --limit 60/s --limit-burst 20 -j ACCEPT 
        iptables -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP
        iptables -t mangle -A PREROUTING -f -j DROP
        iptables -A INPUT -p tcp --tcp-flags RST RST -m limit --limit 2/s --limit-burst 2 -j ACCEPT 
        iptables -A INPUT -p tcp --tcp-flags RST RST -j DROP
        iptables -N port-scanning  
        iptables -A port-scanning -p tcp --tcp-flags SYN,ACK,FIN,RST RST -m limit --limit 1/s --limit-burst 2 -j RETURN 
        iptables -A port-scanning -j DROP
        iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --update --seconds 60 --hitcount 10 -j DROP 
        iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --set 
        iptables -I INPUT -p udp --dport $valve -j ACCEPT
        iptables -I INPUT -p udp --sport $valve -j ACCEPT
        iptables -I INPUT -p tcp --dport $valve -j ACCEPT
        iptables -I INPUT -p tcp --sport $valve -j ACCEPT
        iptables -I INPUT -p tcp --sport $ssh -j ACCEPT
        iptables -I INPUT -p tcp --sport $ssh -j ACCEPT
        clear
    elif [ "$firewall" = "3" ]; then
    	    	clear
    	read -p "Enter port of game-server (etc. 27015) " samp
    	clear
    	read -p "Enter SSH port (etc. 22) " ssh 
    	clear
    	echo -e "${WHITE}Configuring firewall... All other ports are going to close!${DEFAULT}"
    	sleep 0.5
    	clear  
    	iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN,RST,PSH,ACK,URG NONE -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,SYN FIN,SYN -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags SYN,RST SYN,RST -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,RST FIN,RST -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags FIN,ACK FIN -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,URG URG -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,FIN FIN -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ACK,PSH PSH -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL ALL -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL NONE -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL FIN,PSH,URG -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,FIN,PSH,URG -j DROP 
        iptables -t mangle -A PREROUTING -p tcp --tcp-flags ALL SYN,RST,ACK,FIN,URG -j DROP
        iptables -t mangle -A PREROUTING -s 224.0.0.0/3 -j DROP 
        iptables -t mangle -A PREROUTING -s 169.254.0.0/16 -j DROP 
        iptables -t mangle -A PREROUTING -s 172.16.0.0/12 -j DROP 
        iptables -t mangle -A PREROUTING -s 192.0.2.0/24 -j DROP 
        iptables -t mangle -A PREROUTING -s 192.168.0.0/16 -j DROP 
        iptables -t mangle -A PREROUTING -s 10.0.0.0/8 -j DROP 
        iptables -t mangle -A PREROUTING -s 0.0.0.0/8 -j DROP 
        iptables -t mangle -A PREROUTING -s 240.0.0.0/5 -j DROP 
        iptables -t mangle -A PREROUTING -s 127.0.0.0/8 ! -i lo -j DROP
        iptables -t mangle -A PREROUTING -p icmp -j DROP
        iptables -A INPUT -p tcp -m connlimit --connlimit-above 80 -j REJECT --reject-with tcp-reset
        iptables -A INPUT -p tcp -m conntrack --ctstate NEW -m limit --limit 60/s --limit-burst 20 -j ACCEPT 
        iptables -A INPUT -p tcp -m conntrack --ctstate NEW -j DROP
        iptables -t mangle -A PREROUTING -f -j DROP
        iptables -A INPUT -p tcp --tcp-flags RST RST -m limit --limit 2/s --limit-burst 2 -j ACCEPT 
        iptables -A INPUT -p tcp --tcp-flags RST RST -j DROP
        iptables -N port-scanning  
        iptables -A port-scanning -p tcp --tcp-flags SYN,ACK,FIN,RST RST -m limit --limit 1/s --limit-burst 2 -j RETURN 
        iptables -A port-scanning -j DROP
        iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --update --seconds 60 --hitcount 10 -j DROP 
        iptables -A INPUT -p tcp --dport ssh -m conntrack --ctstate NEW -m recent --set 
        iptables -I INPUT -p udp --dport $samp -j ACCEPT
        iptables -I INPUT -p udp --sport $samp -j ACCEPT
        iptables -I INPUT -p tcp --dport $samp -j ACCEPT
        iptables -I INPUT -p tcp --sport $samp -j ACCEPT
        iptables -I INPUT -p tcp --sport $ssh -j ACCEPT
        iptables -I INPUT -p tcp --sport $ssh -j ACCEPT
        clear
    elif [ "$firewall" = "4" ]; then
    	./deb10.sh
    else
    	./deb10.sh
    fi
elif [ "$deb10" = "5" ]; then
	Finish
else
	./deb10.sh
fi



 
