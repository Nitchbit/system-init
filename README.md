# system-init
A script that allow you to initialize and configure your system in terms of what softwares you want to be installed/removed in your system after a fresh installation.

## sysscript.sh
It's a script that read the .config file and automatically install or remove the specified packages(temporary works only with
unix systems that have compability with apt and snap).

## init_sysscript.config
It's the file where you have to list the names of the packages that you want to install, if it's empty the script will simply
update the system.

## Usage
The .config and the script have to be in the same folder.
After you have customized the .config with the names of the packages you want to install or remove, run the script from
a terminal opened in the folder where the script is.
