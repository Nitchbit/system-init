#!/bin/bash

# Configuring dpkg
sudo dpkg --configure -a

# Removing all
if [[ $1 = "-removeall" ]]; then
	sudo apt purge -y openjdk-8-jdk
	sudo apt purge -y wireshark
	sudo apt purge -y ardour
	sudo snap remove android-studio
	sudo snap remove intellij-idea-community
	sudo snap remove pycharm-community
	sudo snap remove sublime-text
	sudo snap remove blender
	sudo snap remove gimp
	sudo snap remove kdenlive
	sudo apt purge -y snapd
	sudo apt purge -y gparted
fi

# Update the system
sudo apt update -y
sudo apt upgrade -y
sudo apt install -y snapd
sudo apt install -y gparted

# Installing productivity softwares
if [[ $1 = "-productivity" ]]; then
	# Android Studio
	sudo apt install -y openjdk-8-jdk
	sudo snap install --classic android-studio

	# IntelliJ
	sudo snap install --classic intellij-idea-community 

	# PycCarhm
	sudo snap install --classic pycharm-community

	# Sublime Text
	sudo snap install --classic sublime-text

# Installing creativity softwares
elif [[ $1 = "-creativity" ]]; then
	# Wireshark
	sudo apt install -y wireshark

	# Ardour
	sudo apt install -y ardour

	# Blender
	sudo snap install --classic blender

	# Gimp
	sudo snap install gimp

	# Kdenlive
	sudo snap install kdenlive

# Installing all
else 
	# Install sudo snapd
	sudo apt install -y snapd

	# Android Studio
	sudo apt install -y openjdk-8-jdk
	sudo snap install --classic android-studio

	# IntelliJ
	sudo snap install --classic intellij-idea-community 

	# PycCarhm
	sudo snap install --classic pycharm-community

	# Sublime Text
	sudo snap install --classic sublime-text

	# Wireshark
	sudo apt install -y wireshark

	# Ardour
	sudo apt install -y ardour

	# Blender
	sudo snap install --classic blender

	# Gimp
	sudo snap install gimp

	# Kdenlive
	sudo snap install kdenlive
	
	# Spotify
	sudo snap install spotify
	
	# Telegram Desktop
	sudo snap install telegram-desktop
	
	# WhatsApp Desktop
	sudo snap install whatsdesk
	
	# Gnome Tweak Tool
	sudo apt install -y gnome-tweak-tool
	
	# Neofetch
	sudo apt install -y neofetch
fi

# Update the system
sudo apt update -y
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt full-upgrade -y
sudo snap refresh
