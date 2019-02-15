#!/bin/bash 

    mkdir -p ~/.config;
    mkdir -p ~/.config/xfce4;
    mkdir -p ~/.config/xfce4/xfconf;
    mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml;
    cp ./settings/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/thunar.xml;