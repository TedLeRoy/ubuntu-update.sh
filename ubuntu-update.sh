#!/bin/bash

# Simple bash script to updte Ubuntu Linux
# Run ./ubuntu-update.sh with sudo privileges

echo ""
echo ""
echo -e "\e[31mubuntu-update.sh Copyright (C) 2018 Ted LeRoy"
echo -e "This program comes with ABSOLUTELY NO WARRANTY see "
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
apt-get update | tee /tmp/update-output.txt
echo ""
echo ""
echo -e "\e[32m##############################"
echo -e "# Upgrading Operating System #"
echo -e "##############################\e[0m"
echo ""
echo ""
apt-get upgrade -y | tee -a /tmp/update-output.txt
echo ""
echo ""
echo -e "\e[32m#############################"
echo -e "#  Starting Full Upgrade    #"
echo -e "#############################\e[0m"
echo ""
echo ""
apt-get dist-upgrade -y | tee -a /tmp/update-output.txt
echo ""
echo ""
echo -e "\e[32m#############################"
echo -e "#   Full Upgrade Complete   #"
echo -e "#############################\e[0m"
echo ""
echo ""
echo -e "\e[32m#####################################################"
echo -e "#   Checking for actionable messages from install   #"
echo -e "#####################################################\e[0m"
echo ""
egrep -wi --color 'warning|error|critical|reboot|restart|autoclean|autoremove' /tmp/update-output.txt | sort -u
echo ""
echo -e "\e[32m#############################"
echo -e "#    Cleaning temp files    #"
echo -e "#############################\e[0m"
echo ""
rm /tmp/update-output.txt
echo ""
echo -e "\e[32m#############################"
echo -e "#     Done with upgrade     #"
echo -e "#############################\e[0m"
echo ""
echo ""
