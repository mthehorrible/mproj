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
 printf "${CYAN}Debian/Ubuntu${NC}\n"
 echo "  1a.) apt: Upgrade packages (upgrade)"
 echo "  1b.) apt: Upgrade and intelligently handle changing dependencies (dist-upgrade)"
 echo "  1c.) apt: Upgrade and possibly remove packages if required to resolve a package conflict (full-upgrade)"
 echo "  1d.) apt: Remove orphan packages (autoremove)"
 echo "  1e.) apt: Clear local repo of packages that can no longer be installed (autoclean)"
 echo "  1f.) apt: Clear local repo (clean)"
 printf "\n${CYAN}Fedora${NC}\n"
 echo "  2a.) dnf: Upgrade packages (update)"
 echo "  2b.) dnf: Remove orphan packages (autoremove)"
 printf "\n${CYAN}RHEL/CentOS${NC}\n"
 echo "  3.) yum: Upgrade packages (update)"
 printf "\n${CYAN}Arch/Manjaro${NC}\n"
 echo "  4a.) pacman: Upgrade packages (-Syyuu)"
 echo "  4b.) pacman: Clear package cache (-Sc)"
 echo "  5.) yaourt: Upgrade AUR packages (-Su --aur --noconfirm)"
 printf "\n${CYAN}Solus${NC}\n"
 echo "  6.) eopkg: Upgrade packages (upgrade)"
 printf "\n${CYAN}Mandriva/ROSA${NC}\n"
 echo "  7.) urpmi Upgrade packages (--auto-update;)"
 printf "\n${CYAN}Not distro specific${NC}\n"
 echo "  8.) Snaps (snap refresh)"
 echo "  9.) Firmware (fwupdmgr get-updates)"
 echo "  m.) Main Menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1a ) sudo apt update && sudo apt upgrade; printf "\n\n\n";;
 1b ) sudo apt update && sudo apt dist-upgrade; printf "\n\n\n";;
 1c ) sudo apt update && sudo apt full-upgrade; printf "\n\n\n";;
 1d ) sudo apt update && sudo apt autoremove; printf "\n\n\n";;
 1e ) sudo apt update && sudo apt autoclean; printf "\n\n\n";;
 1f ) sudo apt update && sudo apt clean; printf "\n\n\n";;
 2a ) sudo dnf check-update && sudo dnf update; printf "\n\n\n";;
 2b ) sudo dnf check-update && sudo dnf autoremove; printf "\n\n\n";;
 3 ) sudo yum update; printf "\n\n\n";;
 4a ) sudo pacman -Syyuu; printf "\n\n\n";;
 4b ) sudo pacman -Sc; printf "\n\n\n";;
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
