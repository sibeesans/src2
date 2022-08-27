#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
clear
echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e " \E[44;1;39m        ⇱ AutoScript By Ridwan Project ⇲        \E[0m"
echo -e " \E[44;1;39m            ⇱ Informasi VPS SERVER ⇲            \E[0m"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
IPVPS=$(curl -s ipinfo.io/ip )
serverV=$( curl -sS https://raw.githubusercontent.com/myridwan/src/ipuk/versi)

if [ "$cekup" = "day" ]; then
echo    -e   "System Uptime   :  $uphours $upminutes $uptimecek"
else
echo -e   "System Uptime   :  $uphours $upminutes"
fi
echo -e "Use Core        :  $rekk"
echo -e "Current Domain  :  $(cat /etc/$bec/domain)"
echo -e "IP-VPS          :  $IPVPS"
echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e " \E[44;1;39m             ⇱ Status Layanan Service ⇲         \E[0m"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"

 echo -e " [ SSH WebSocket : ON ]   [ XRAY : ON ]    [ NGINX : ON ]"

echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e " \E[44;1;39m               ⇱ Status Layanan VPS ⇲           \E[0m"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"

echo -e " [\033[1;36m01\033[0m] • SSH-WS Manager       [\033[1;36m08\033[0m] • Info Pembuat
 [\033[1;36m02\033[0m] • Vmess Manager        [\033[1;36m09\033[0m] • Renew Cert
 [\033[1;36m03\033[0m] • Vless Manager        [\033[1;36m10\033[0m] • Speedtest
 [\033[1;36m04\033[0m] • Trojan Manager       [\033[1;36m11\033[0m] • Coming Soon
 [\033[1;36m05\033[0m] • SS Manager           [\033[1;36m12\033[0m] • Cek Bandwith
 [\033[1;36m06\033[0m] • Add Private Domain   [\033[1;36m13\033[0m] • BACKUP
 [\033[1;36m07\033[0m] • Running All Service  [\033[1;36m14\033[0m] • RESTORE DATA"

echo -e "\e[36m╒━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╕\033[0m"
echo -e "Version       :\033[1;36m $serverV Latest Version\e[0m"
echo -e "Client Name   : $Name"
echo -e "Expiry script : $Exp"
echo -e "\e[36m╘━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━╛\033[0m"
echo -e ""
echo -ne "Select menu : "; read x

case "$x" in 
   1 | 01)
   clear
   ssh-menu
   break
   ;;
   2 | 02)
   clear
   v2ray-menu
   break
   ;;
   3 | 03)
   clear
   trojan-menu
   break
   ;;
   4 | 04)
   clear
   ssgrpc-menu
   break
   ;;
   5 | 05)
   clear
   add-host
   break
   ;;
   6 | 06)
   clear
   running
   break
   ;;
   7 | 07)
   clear
   about
   break
   ;;
   8 | 08)
   clear
   crtv2ray
   break
   ;;
   9 | 09)
   clear
   speedtest
   break
   ;;
   0 | 00)
   clear
   menu
   break
   ;;
   *)
   clear
esac
done
#fim
