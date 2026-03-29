#!/bin/bash 
# Script 2: FOSS Package Inspector 
#check if a specific package is installed and display its version maintainer and description
PACKAGE="bash"
#dpkg -l lists the installed packages while grep -q checks if it exists
if dpkg -l | grep -w "$PACKAGE"; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi 
#descriptions for each package
case $PACKAGE in
    bash)
        echo "Bash: the default shell powering Linux command line"
        ;;
    coreutils)
        echo "Coreutils: essential tools for file and system management"
        ;;
    linux-image*)
        echo "Linux Kernel: the core of the operating system managing hardware"
        ;;
    *)
        echo "Unknown package: part of the open-source ecosystem"
        ;;
esac
