#!/bin/bash
clear
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0m'
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
color1='\e[031;1m'
color2='\e[34;1m'
color3='\e[0m'
# COLOR VALIDATION
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
IPVPS=$(curl -s ipinfo.io/ip )
serverV=$( curl -sS https://raw.githubusercontent.com/myridwan/src/ipuk/versi )
Exf=$( curl -sS https://raw.githubusercontent.com/myridwan/src/ipuk/exfired )
Name=$( curl -sS https://raw.githubusercontent.com/myridwan/src/ipuk/name )
# =========================================
echo -e ""
echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e " \E[44;1;39m        ⇱ AutoScript By Ridwan Project ⇲        \E[0m"
echo -e " \E[44;1;39m            ⇱ Informasi VPS SERVER ⇲            \E[0m"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"
echo -e "Client Name   :  $Name"
echo -e "Exfired Script  :  $Exf"
echo -e "IP-VPS         :  $IPVPS"
echo -e "Versi Script    :  $serverV Latest Version"
echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e " \E[44;1;39m             ⇱ Status Layanan Service ⇲         \E[0m"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"
echo -e " [ SSH WebSocket : ON ]     [ XRAY : ON ]      [ NGINX : ON ]"
echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e " \E[44;1;39m               ⇱ Status Layanan VPS ⇲           \E[0m"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"
echo -e " [\033[1;36m01\033[0m] • SSH-WS Manager  [\033[1;36m08\033[0m] • Info Pembuat
 [\033[1;36m02\033[0m] • Vmess Manager   [\033[1;36m09\033[0m] • Speedtest
 [\033[1;36m03\033[0m] • Trojan Manager  [\033[1;36m10\033[0m] • Abot Me
 [\033[1;36m04\033[0m] • SS Manager      [\033[1;36m11\033[0m] • Coming Soon
 [\033[1;36m05\033[0m] • Add Host        [\033[1;36m12\033[0m] • Cek Bandwith
 [\033[1;36m06\033[0m] • Running All     [\033[1;36m13\033[0m] • BACKUP
 [\033[1;36m07\033[0m] • Renew Cert      [\033[1;36m14\033[0m] • RESTORE DATA"
echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e "Version       :\033[1;36m $serverV Latest Version\e[0m"
echo -e "Client Name   : $Name"
echo -e "Expiry script : $Exp"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"
read -p "Select From Options [ 1 - 13 ] : " menu
case $menu in
1)
clear
ssh-menu
;;
2)
clear
v2ray-menu
;;
3)
clear
trojan-menu
;;
4)
clear
ssgrpc-menu
;;
5)
clear
add-host
;;
6)
clear
running
;;
7)
clear
crtv2ray
;;
8)
clear
speedtest
;;
9)
clear
about
;;
10)
clear
trmenu
;;
11)
clear
trgomenu
;;
12)
clear
running
;;
13)
clear
setmenu
;;
14)
clear
exit
;;
*)
clear
menu
;;
esac
