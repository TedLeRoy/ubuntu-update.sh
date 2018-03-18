#!/bin/bash

# Simple bash script to updte Ubuntu Linux
# Run ./ubuntu-update.sh with sudo privileges

# [NOTE] The -e "\32m...\e[0m" code is to display output in color.

echo -e "
\e[31mubuntu-update.sh Copyright (C) 2018 Ted LeRoy
This program comes with ABSOLUTELY NO WARRANTY see 
https://github.com/TedLeRoy/ubuntu-update.sh/blob/master/LICENSE.md
This is free software, and you are welcome to redistribute it
under certain conditions.
Again, see  https://github.com/TedLeRoy/ubuntu-update.sh/blob/master/LICENSE.md
for details.\e[0m"

echo -e "
\e[32m#############################
#     Updating Data Base    #
#############################\e[0m
"

apt-get update | tee /tmp/update-output.txt

echo -e "
\e[32m##############################
# Upgrading Operating System #
##############################\e[0m
"

apt-get upgrade -y | tee -a /tmp/update-output.txt

echo -e "
\e[32m#############################
#  Starting Full Upgrade    #
#############################\e[0m
"

apt-get dist-upgrade -y | tee -a /tmp/update-output.txt

echo -e "
\e[32m#############################
#   Full Upgrade Complete   #
#############################\e[0m
"

echo -e "
\e[32m#####################################################
#   Checking for actionable messages from install   #
#####################################################\e[0m
"

egrep -wi --color 'warning|error|critical|reboot|restart|autoclean|autoremove' /tmp/update-output.txt | uniq

echo -e "
\e[32m#############################
#    Cleaning temp files    #
#############################\e[0m
"

rm /tmp/update-output.txt

echo -e "
\e[32m#############################
#     Done with upgrade     #
#############################\e[0m
"
