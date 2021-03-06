#!/bin/bash

#Set colors
NC='\033[0m' # No Color
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
YELLOW='\033[1;33m'
MAGENTA='\033[1;35m'

function wm_menu {
 printf "\n${MAGENTA}Window Managers Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1a.) Install Fluxbox (Debian 9, Ubuntu 18.04)"
 echo "  1b.) Install Fluxbox (CentOS 7 [EPEL])"
 echo "  2.) Install Openbox (Debian 9, Ubuntu 18.04)"
 echo "  3.) Install JWM (Ubuntu 18.04)"
 echo "  m.) Main installers menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1a ) sudo apt update; sudo apt -y install xorg fluxbox; printf "\n\n";;
 1b ) sudo yum groupinstall -y 'X Window System'; sudo yum install -y fluxbox; printf "\n\n";;
 2 ) sudo apt update; sudo apt -y install xorg openbox obmenu obconf; printf "\n\n";;
 3 ) sudo apt update; sudo apt -y install xorg jwm; printf "\n\n";;
 m ) clear; installers_menu;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
function terminal_emulators_menu {
 printf "\n${MAGENTA}Terminal Emulators Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1.) Install lxterminal (Debian 9, Ubuntu 18.04)"
 echo "  2a.) Install terminator (Debian 9, Ubuntu 18.04)"
 echo "  2b.) Install terminator (CentOS 7 [EPEL])"
 echo "  3.) Install guake (Debian 9, Ubuntu 18.04)"
 echo "  m.) Main installers menu"
 echo "  x.) Quit"
 
 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1 ) sudo apt update; sudo apt -y install lxterminal; 
        printf "\n ${CYAN}Setting lxterminal settings${NC} \n";
        mkdir -p ~/.config;
        mkdir -p ~/.config/lxterminal;
        cp ./settings/lxterminal.conf ~/.config/lxterminal/lxterminal.conf;
        printf "\n\n";;
 2a ) sudo apt update; sudo apt -y install terminator;
        printf "\n ${CYAN}Setting terminator settings${NC} \n";
        mkdir -p ~/.config;
        mkdir -p ~/.config/terminator;
        cp ./settings/terminator-config ~/.config/terminator/config;
        printf "\n\n";;
 2b ) sudo yum -y install terminator;
        printf "\n ${CYAN}Setting terminator settings${NC} \n";
        mkdir -p ~/.config;
        mkdir -p ~/.config/terminator;
        cp ./settings/terminator-config ~/.config/terminator/config;
        printf "\n\n";;
 3 ) sudo apt update; sudo apt -y install guake; printf "\n\n";;
 m ) clear; installers_menu;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
function texted_menu {
 printf "\n${MAGENTA}Text Editors Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1.) Install Leafpad (Debian 9, Ubuntu 18.04)"
 echo "  2.) Install Mousepad (CentOS 7 [EPEL])"
 echo "  3a.) Install Zim Wiki (Debian 9, Ubuntu 18.04)"
 echo "  3a.) Install Zim Wiki (CentOS 7 EPEL)"
 echo "  4.) Install Geany (CentOS 7 [EPEL])"
 echo "  m.) Main installers menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1 ) sudo apt update; sudo apt -y install leafpad;
    mkdir -p ~/.config;
    mkdir -p ~/.config/leafpad;
    cp ./settings/leafpadrc ~/.config/leafpad/leafpadrc;
    printf "\n\n";;
 2 ) sudo yum -y install mousepad; printf "\n\n";;
 3a ) sudo apt update; sudo apt -y install zim; printf "\n\n";;
 3b ) sudo yum -y install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm;
    sudo yum -y install epel-release; sudo rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm;
    yum repolist;
    sudo yum install Zim;
    printf "\n\n";;
 4 ) sudo yum -y install geany; printf "\n\n";;
 m ) clear; installers_menu;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
function fileman_menu {
 printf "\n${MAGENTA}File Managers Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1a.) Install Thunar (Debian 9, Ubuntu 18.04)"
 echo "  1b.) Install Thunar (CentOS 7 [EPEL])"
 echo "  m.) Main installers menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1a ) sudo apt update; sudo apt -y install thunar gvfs-backends;
    mkdir -p ~/.config;
    mkdir -p ~/.config/xfce4;
    mkdir -p ~/.config/xfce4/xfconf;
    mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml;
    cp ./settings/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml;
    printf "\n\n";;
 1b ) sudo yum -y install thunar samba gvfs-client gvfs-smb gvfs-fuse;
    mkdir -p ~/.config;
    mkdir -p ~/.config/xfce4;
    mkdir -p ~/.config/xfce4/xfconf;
    mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml;
    cp ./settings/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml;
    printf "\n\n";;
 m ) clear; installers_menu;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
function webbrowser_menu {
 printf "\n${MAGENTA}Web Browsers Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1a.) Install Firefox (Snap)"
 echo "  1b.) Install Firefox (Debian 9)"
 echo "  1c.) Install Firefox (Ubuntu 18.04)"
 echo "  1d.) Install Firefox (CentOS 7)"
 echo "  2.) Install Chromium (Snap)"
 echo "  3.) Install Falkon (Snap)"
 echo "  4.) Install Brave (Snap)"
 echo "  5.) Install Opera (Snap)"
 echo "  m.) Main installers menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1a ) sudo snap install firefox; printf "\n\n";;
 1b ) sudo apt update; sudo apt -y install firefox-esr; printf "\n\n";;
 1c ) sudo apt update; sudo apt -y install firefox; printf "\n\n";;
 1d ) sudo yum -y install firefox; printf "\n\n";;
 2 ) sudo snap install chromium; printf "\n\n";;
 3 ) sudo snap install falkon; printf "\n\n";;
 4 ) sudo snap install brave; printf "\n\n";;
 5 ) sudo snap install opera; printf "\n\n";;
 m ) clear; installers_menu;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
function audiovideo_menu {
 printf "\n${MAGENTA}Audio/Video Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1a.) Install VLC (snap)"
 echo "  1b.) Install VLC (Debian 9, Ubuntu 18.04)"
 echo "  2.) Install ffmpeg (Debian 9, Ubuntu 18.04)"
 echo "  3a.) Install youtube-dl (All)"
 echo "  3b.) Update youtube-dl (All)"
 echo "  4.) Install mp3wrap (Debian 9, Ubuntu 18.04)"
 echo "  m.) Main installers menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1a ) sudo snap install vlc; printf "\n\n";;
 1b ) sudo apt update; sudo apt -y install vlc; printf "\n\n";;
 2 ) sudo apt update; sudo apt -y install ffmpeg; printf "\n\n";;
 3a ) sudo wget https://yt-dl.org/latest/youtube-dl -O /usr/local/bin/youtube-dl; sudo chmod a+x /usr/local/bin/youtube-dl; printf "\n\n";;
 3b ) sudo youtube-dl -U; printf "\n\n";;
 4 ) sudo apt update; sudo apt -y install mp3wrap; printf "\n\n";;
 m ) clear; installers_menu;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
function systemtools_menu {
 printf "\n${MAGENTA}System Tools Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1a.) Install gparted (Debian 9, Ubuntu 18.04)"
 echo "  1b.) Install gparted (CentOS 7 [EPEL])"
 echo "  2a.) Install OpenSSH server (Debian 9, Ubuntu 18.04)"
 echo "  2b.) Install OpenSSH server (Arch)"
 echo "  3a.) Install hardinfo (Debian 9, Ubuntu 18.04)"
 echo "  3b.) Install hardinfo (CentOS 7 [EPEL])"
 echo "  4.) Install EPEL Repo (CentOS 7)"
 echo "  5.) Install Virt-Manager (CentOS 7)"
 echo "  m.) Main installers menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1a ) sudo apt update; sudo apt -y install gparted; printf "\n\n";;
 1b ) sudo yum -y install gparted; printf "\n\n";;
 2a ) sudo apt update; sudo apt -y install openssh-server; printf "\n\n";;
 2b ) sudo pacman install openssh; sudo systemctl start sshd.service; sudo systemctl enable sshd.service; printf "\n\n";;
 3a ) sudo apt update; sudo apt -y install hardinfo; printf "\n\n";;
 3b ) sudo yum -y install hardinfo; printf "\n\n";;
 4 ) sudo yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm; printf "\n\n";;
 5 ) sudo yum -y install virt-manager openssh-askpass; printf "\n\n";;
 m ) clear; installers_menu;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
function cliutils_menu {
 printf "\n${MAGENTA}CLI Tools Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1a.) Install htop (Debian 9, Ubuntu 18.04)"
 echo "  1b.) Install htop (CentOS 7 [EPEL])"
 echo "  2a.) Install screenfetch (Debian 9, Ubuntu 18.04)"
 echo "  2b.) Install screenfetch (CentOS 7)"
 echo "  3.) Install neofetch (Debian 9, Ubuntu 18.04)"
 echo "  4.) Install dnsutils (Debian 9, Ubuntu 18.04)"
 echo "  5.) Install bind-utils (CentOS 7)"
 echo "  6a.) Install dislocker (Ubuntu 18.04)"
 echo "  6b.) Install dislocker (Fedora 29)"
 echo "  m.) Main installers menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1a ) sudo apt update; sudo apt -y install htop; printf "\n\n";;
 1b ) sudo yum -y install htop; printf "\n\n";;
 2a ) sudo apt update; sudo apt -yinstall screenfetch; printf "\n\n";;
 2b ) sudo yum -y install git; 
        git clone git://github.com/KittyKatt/screenFetch.git screenfetch;
        sudo cp screenfetch/screenfetch-dev /usr/bin/screenfetch;
        sudo chmod +x /usr/bin/screenfetch;
        printf "\n\n";;
 3 ) sudo apt update; sudo apt -y install neofetch; printf "\n\n";;
 4 ) sudo apt update; sudo apt -y install dnsutils; printf "\n\n";;
 5 ) sudo yum -y install bind-utils; printf "\n\n";;
 6a ) sudo apt update; sudo apt -y install dislocker; printf "\n\n";;
 6b ) sudo dnf -y install dislocker fuse-dislocker; printf "\n\n";;
 m ) clear; installers_menu;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
function dev_menu {
 printf "\n${MAGENTA}Development Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1a.) Install Git (Debian, Ubuntu)"
 echo "  1b.) Install Git (CentOS 7)"
 echo "  1c.) Install Git (Fedora 29)"
 echo "  2a.) Install Git-All (Debian, Ubuntu)"
 echo "  2b.) Install Git-All (Fedora 29)"
 echo "  2.) Visual Code Studio (Snap)"
 echo "  m.) Main installers menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1a ) sudo apt install git; printf "\n\n";;
 1b ) sudo yum install git; printf "\n\n";;
 1c ) sudo dnf install git; printf "\n\n";;
 2a ) sudo apt install git-all; printf "\n\n";;
 2b ) sudo dnf install git-all; printf "\n\n";;
 2 ) sudo snap install vscode --classic; printf "\n\n";;
 m ) clear; installers_menu;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
function theme_menu {
 printf "\n${MAGENTA}Theme Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1.) Liberation Fonts (CentOS 7)"
 echo "  2.) Gnome Themes (CentOS 7)"
 echo "  m.) Main installers menu"
 echo "  x.) Quit"

 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1 ) sudo yum -y install liberation-fonts; printf "\n\n";;
 2 ) sudo yum -y install gnome-themes-standard; printf "\n\n";;
 m ) clear; installers_menu;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
function installers_menu {
 printf "\n${MAGENTA}Installers Menu${NC}\n\n"
 option=0
 until [ "$option" = "x" ]; do
 echo "  1.) Window Managers"
 echo "  2.) Terminal Emulators"
 echo "  3.) Text Editors"
 echo "  4.) File Managers"
 echo "  5.) Web Browsers"
 echo "  6.) Audio/Video"
 echo "  7.) System Tools"
 echo "  8.) Command Line Utilities"
 echo "  9.) Development Tools"
 echo "  10.) Theming"
 echo "  m.) Main Menu"
 echo "  x.) Quit"
 
 printf "\n${MAGENTA}Enter choice:${NC}\n\n"
 read option
 echo ""
 case $option in
 1 ) clear; wm_menu;;
 2 ) clear; terminal_emulators_menu;;
 3 ) clear; texted_menu;;
 4 ) clear; fileman_menu;;
 5 ) clear; webbrowser_menu;;
 6 ) clear; audiovideo_menu;;
 7 ) clear; systemtools_menu;;
 8 ) clear; cliutils_menu;;
 9 ) clear; dev_menu;;
 10 ) clear; theme_menu;;
 m ) clear; ./mproj.sh; exit;;
 x ) clear; exit;;
 * ) printf "${RED}Please enter a valid number${NC}\n\n";; 
 esac
 done
}
clear; installers_menu