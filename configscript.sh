#!/bin/bash

# Define function
Configure() {
	# Root
	sudo -i

	# Update the system
	apt-get update
	apt-get upgrade

	apt-get install snapd

	# Android Studio
	apt-get install openjdk-8-jdk
	snap install --classic android-studio

	# IntelliJ
	snap install --classic intellij-idea-community 

	# PycCarhm
	snap install --classic pycharm-community

	# Sublime Text
	snap install --classic sublime-text

	# Wireshark
	apt-get install wireshark

	# Ardour
	apt-get install ardour

	# Blender
	snap install --classic blender

	# Gimp
	snap install gimp

	# Kdenlive
	snap install kdenlive

	# Update the system
	apt-get update
	apt-get upgrade
	atp-get autoremove
	snap refresh

	exit
}

# Invoke function
Configure