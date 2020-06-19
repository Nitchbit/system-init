#!/bin/bash

# Configuring dpkg
sudo dpkg --configure -a

# Updating the system
sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y

# Installing snapd
sudo apt install -y snapd
sudo apt install -y neofetch

FLAG=0
while read line; do
	if [[ $line = "#TOINSTALL" ]]; then
		FLAG=1
		continue;
	fi
	if [[ $line = "#TOREMOVE" ]]; then
		FLAG=-1
		continue;
	fi
	if [[ $FLAG = 1 ]]; then
		if sudo snap install --classic $line; then
			continue;
		else
			sudo apt install -y $line;
			continue;
		fi
	fi
	if [[ $FLAG = -1 ]]; then
		sudo snap remove $line;
		sudo apt purge -y $line;
	fi
done < $PWD/init_sysscript.config

# Updating the system
sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt autoremove -y
sudo snap refresh

# Executing neofetch
sudo neofetch
