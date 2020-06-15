#!/bin/bash

# Configuring dpkg
sudo dpkg --configure -a

# Removing all
if [[ $1 = "-removeall" ]]; then
	sudo apt-get purge -y openjdk-8-jdk
	sudo apt-get purge -y wireshark
	sudo apt-get purge -y ardour
	sudo snap remove android-studio
	sudo snap remove intellij-idea-community
	sudo snap remove pycharm-community
	sudo snap remove sublime-text
	sudo snap remove blender
	sudo snap remove gimp
	sudo snap remove kdenlive

elif [[ $1 = "-productivity" ]]; then
	# Update the system
	sudo apt-get update -y
	sudo apt-get upgrade -y
	
	# Install sudo snapd
	sudo apt-get install -y snapd
	
	# Android Studio
	sudo apt-get install -y openjdk-8-jdk
	sudo snap install --classic android-studio

	# IntelliJ
	sudo snap install --classic intellij-idea-community 

	# PycCarhm
	sudo snap install --classic pycharm-community

	# Sublime Text
	sudo snap install --classic sublime-text

elif [[ $1 = "-creativity" ]]; then
	# Wireshark
	sudo apt-get install -y wireshark

	# Ardour
	sudo apt-get install -y ardour

	# Blender
	sudo snap install --classic blender

	# Gimp
	sudo snap install gimp

	# Kdenlive
	sudo snap install kdenlive

# Installing all
else 
	# Update the system
	sudo apt-get update -y
	sudo apt-get upgrade -y

	# Install sudo snapd
	sudo apt-get install -y snapd

	# Android Studio
	sudo apt-get install -y openjdk-8-jdk
	sudo snap install --classic android-studio

	# IntelliJ
	sudo snap install --classic intellij-idea-community 

	# PycCarhm
	sudo snap install --classic pycharm-community

	# Sublime Text
	sudo snap install --classic sublime-text

	# Wireshark
	sudo apt-get install -y wireshark

	# Ardour
	sudo apt-get install -y ardour

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
fi

# Update the system
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get autoremove -y
sudo snap refresh
