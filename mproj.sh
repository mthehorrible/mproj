#!/bin/bash

#Set colors
RED='\033[0;31m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'
NC='\033[0m' # No Color

function main_menu 
{
printf "\n${MAGENTA}mproj scripts${NC}\n\n"
option=0
until [ "$option" = "x" ]; do
echo "  1.) Installers Menu"
echo "  2.) Updaters Menu"
echo "  3.) Info Menu"
echo "  x.) Quit"

printf "\n${MAGENTA}Enter choice:${NC}\n\n"
read option
echo ""
case $option in
    1 ) clear; ./installers.sh; exit;;
    2 ) clear; ./updaters.sh; exit;;
    3 ) clear; ./info.sh; exit;;
    x ) clear; exit;;
    * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
esac
done
}

clear; main_menu
