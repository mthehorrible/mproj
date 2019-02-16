#!/bin/bash

#Set colors
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'
NC='\033[0m' # No Color

function dns_tst {
printf "\nCloudFlare: ${CYAN}1.1.1.1 ${NC}&${CYAN} 1.0.0.1${NC}"
printf "\nGoogle: ${CYAN}8.8.8.8 ${NC}&${CYAN} 8.8.4.4${NC}"
printf "\nQuad9: ${CYAN}9.9.9.9 ${NC}&${CYAN} 149.112.112.112${NC}"
printf "\nOpenDNS: ${CYAN}208.67.222.222 ${NC}&${CYAN} 208.67.220.220${NC}"
printf "\nLevel3: ${CYAN}209.244.0.3 ${NC}&${CYAN} 209.244.0.4${NC}"
printf "${MAGENTA}\n\n"
fping -e 1.1.1.1 1.0.0.1 8.8.8.8 8.8.4.4 9.9.9.9 149.112.112.112 208.67.222.222 208.67.220.220 209.244.0.3 209.244.0.4
printf "${NC}\n\n"
}
function info_menu {
 printf "\n${MAGENTA}Info Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1.) Date/Time"
 echo "  2.) Kernel Version"
 echo "  3.) Uptime"
 echo "  4a.) Internal IP (ip a)"
 echo "  4b.) Internal IP (ifconfig)"
 echo "  5a.) External IP (dig)"
 echo "  5b.) External IP (wget)"
 echo "  6a.) System Info (screenfetch)"
 echo "  6b.) System Info (neofetch)"
 echo "  7.) htop"
 echo "  8.) DNS list & test"
 echo "  m.) Main Menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1 ) clear; printf "${CYAN}Local Date/Time is: "; date; printf "UTC Date/Time is: "; date -u; printf "${NC}\n";;
 2 ) clear; printf "${CYAN}Current kernel version: "; uname -r; printf "Detailed Info: "; uname -a; printf "${NC}\n";;
 3 ) clear; printf "${CYAN}"; uptime -p; printf "Last Boot Time: "; uptime -s; printf "${NC}\n";;
 4a ) clear; ip a; printf "\n\n\n";;
 4b ) clear; ifconfig; printf "\n\n\n";;
 5a ) clear; printf "${CYAN}External IP is: "; dig TXT +short o-o.myaddr.l.google.com @ns1.google.com; printf "${NC}\n";;
 5b ) clear; printf "${CYAN}External IP is: "; wget -O - -q icanhazip.com; printf "${NC}\n";;
 6a ) clear; screenfetch; printf "\n\n\n";;
 6b ) clear; neofetch; printf "\n\n\n";;
 7 ) clear; htop;;
 8 ) clear; dns_tst;;
 m ) clear; ./mproj.sh; exit;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}

clear; info_menu