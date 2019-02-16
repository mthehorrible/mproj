#!/bin/bash

#Set colors
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'
NC='\033[0m' # No Color

function updaters_menu
{
printf "\n${MAGENTA}Update Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1.) apt (Debian/Ubuntu)"
 echo "  2.) dnf (Fedora)"
 echo "  3.) yum (RHEL/CentOS)"
 echo "  4.) pacman (Arch/Manjaro)"
 echo "  5.) yaourt (AUR)"
 echo "  6.) eopkg (Solus)"
 echo "  7.) urpmi (Mandriva/ROSA)"
 echo "  8.) Snaps (snap refresh)"
 echo "  9.) Firmware (fwupdmgr get-updates)"
 echo "  m.) Main Menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1 ) sudo apt update && sudo apt upgrade; printf "\n\n\n";;
 2 ) sudo dnf check-update; sudo dnf update; printf "\n\n\n";;
 3 ) sudo yum update; printf "\n\n\n";;
 4 ) sudo pacman -Syyuu; printf "\n\n\n";;
 5 ) yaourt -Su --aur --noconfirm; printf "\n\n\n";;
 6 ) sudo eopkg update-repo && sudo eopkg upgrade; printf "\n\n\n";;
 7 ) sudo urpmi --auto-update; printf "\n\n\n";;
 8 ) sudo snap refresh; printf "\n\n\n";;
 9 ) sudo fwupdmgr get-updates; printf "\n\n\n";;
 m ) clear; ./mproj.sh; exit;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}

clear; updaters_menu
