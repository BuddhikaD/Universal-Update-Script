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
## Test if the local host is Arch based Linux 

if  [ -d /etc/pacman.d ]
then
    ## Run the Arch version of the update command
    sudo pacman -Syu
fi

## Test if the local host is Debian based Linux

if [ -d /etc/apt ]
then
    ## Run the debian version of the update comand
    sudo apt-get update && sudo apt-get dist-upgrade
fi

## Test if the local host is RHEL/CentOS/Red Hat/Fedora Linux

if [ -d /etc/yum.conf ]
then
    ## Run the RHEL/CentOS/Red Hat/Fedora version of the update comand
    sudo yum check-update && sudo yum update -y 
fi