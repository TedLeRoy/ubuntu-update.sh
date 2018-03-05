#!/bin/bash

# Simple bash script to updte Ubuntu Linux
# Run ./ubuntu-update.sh with sudo privileges

echo ""
echo ""
echo -e "\e[31mubuntu-update.sh Copyright (C) 2018 Ted LeRoy"
echo -e "This program comes with ABSOLUTELY NO WARRANTY' see "
echo -e "https://github.com/TedLeRoy/ubuntu-update.sh/blob/master/LICENSE.md"
echo -e "This is free software, and you are welcome to redistribute it"
echo -e "under certain conditions."
echo -e "Again, see  https://github.com/TedLeRoy/ubuntu-update.sh/blob/master/LICENSE.md"
echo -e "for details.\e[0m"
echo ""

# The -e "\32m...\e[0m" code is to display output in color.

echo ""
echo -e "\e[32m#############################"
echo -e "#     Updating Data Base    #"
echo -e "#############################\e[0m"
echo ""
echo ""
apt update
echo ""
echo ""
echo -e "\e[32m#############################"
echo -e "#     Done With Update      #"
echo -e "#############################\e[0m"
echo ""
echo ""
echo -e "\e[32m##############################"
echo -e "# Upgrading Operating System #"
echo -e "##############################\e[0m"
echo ""
echo ""
apt upgrade -y
echo ""
echo ""
echo -e "\e[32m#############################"
echo -e "#    OS Upgrade Complete    #"
echo -e "#############################\e[0m"
echo ""
echo ""
echo -e "\e[32m#############################"
echo -e "#  Starting Full-Upgrade    #"
echo -e "#############################\e[0m"
echo ""
echo ""
apt full-upgrade -y
echo ""
echo ""
echo -e "\e[32m#############################"
echo -e "#   Full Upgrade Complete   #"
echo -e "#############################\e[0m"
echo ""
echo ""
echo -e "\e[31m###################################################################"
echo -e "#   Check for "reboot required" or "autoclean" related messages   #"
echo -e "###################################################################\e[0m"

