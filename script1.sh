#!/bin/bash
# Script 1: System Identity Report
# Author: Reet Dubey | Course: Open Source Software
#set the variables
STUDENT_NAME="Reet Dubey" #username
SOFTWARE_CHOICE="Linux kernel" #software of choice
KERNEL=$(uname -r)  #kernel version
USER_NAME=$(whoami)  #username logged in
HOME_DIRECTORY=$HOME #home directory
UPTIME=$(uptime -p)  #system uptime 
DATE=$(date) #current date  
DISTRO=$(lsb_release -ds) #distribution name 
LICENSE="GPLv2 (GNU General Public License)" #license name
# display the output
echo "================================" 
echo " Open Source Audit — $STUDENT_NAME" 
echo "================================" 
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel : $KERNEL" 
echo "User : $USER_NAME" 
echo "Home : $HOME_DIRECTORY"
echo "Uptime : $UPTIME" 
echo "Distro Name : $DISTRO"
echo "Date : $DATE"
echo "License : $LICENSE"
