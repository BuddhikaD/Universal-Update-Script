#!/usr/bin/env bash

########################################################
# Author: Buddhika Dananjaya                           #
# Info: Script for universal linux distro updater      #
# License: MIT (c)                                     #
########################################################


GREEN="32"
BOLDGREEN="\e[1;${GREEN}m"
ENDCOLOR="\e[0m"

printf """${BOLDGREEN}                        
Author: @BuddhikaD
Url: https://github.com/BuddhikaD/Universal-Update-Script
"""
cd /etc
## Test if the local host is Arch based

if  [ -d /etc/pacman.d ]
then
    ## Run the Arch version of the update command
    sudo pacman -Syu
fi

## Test if the local host is Debian based

if [ -d /etc/apt ]
then
    ## Run the debian version of the update comand
    sudo apt-get update && sudo apt-get dist-upgrade
fi