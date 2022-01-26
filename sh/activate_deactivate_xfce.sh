#!/bin/bash
##
## EPITECH PROJECT, 2021
## arch - activate_deactivae_xfce.sh
## File description:
## jitter jitter
##

OA='\033[1;32m\033[1;40m'
OE='\033[1;33m\033[1;40m'
OF='\033[1;37m\033[1;40m'

echo -ne "${OE}This program is provided as if and without any warranty.\n"
echo -ne "${OE}\tUse at your own risk.\n"
echo -ne "\n"
echo -ne "${OF}Welcome to the little program to activate and deactivate exfce at startup\n"
echo -ne "${OF}Enter ${OA}'$0 -e'${OF} to enable xfce at startup\n"
echo -ne "${OF}Enter ${OE}'$0 -d'${OF} to disable xfce at startup\n"

if [ $1 -eq "-e"] || [ $1 -eq "e" ] || [ $1 -eq "-E" ] || [ $1 -eq "E" ]
then
    echo -ne "${OE} Enabling xfce at startup:\r"
    mv "/usr/lib/systemd/system/NetworkManager.service" "/usr/lib/systemd/system/CNetworkManager.service"
    sleep 0.5s
    echo -ne "${OE} Enabling xfce at startup:.\r"
    mv "/usr/lib/systemd/system/NetworkManager-dispatcher.service" "/usr/lib/systemd/system/CNetworkManager-dispatcher.service"
    sleep 0.5s
    echo -ne "${OE} Enabling xfce at startup:..\r"
    mv "/usr/lib/systemd/system/NetworkManager-wait-online.service" "/usr/lib/systemd/system/CNetworkManager-wait-online.service"
    sleep 0.5s
    echo -ne "${OE} Enabling xfce at startup:...\r"
    mv "/usr/lib/systemd/system/lightdm.service" "/usr/lib/systemd/system/Clightdm.service"
    sleep 0.5s
    echo -ne "${OA} Enabling xfce at startup:...[ENABLED]\n"
elif [ $1 -eq "-d" ] || [ $1 -eq "d" ] || [ $1 -eq "-D" ] || [ $1 -eq "D" ]
then
    echo -ne "${OE} Disabled xfce at startup:\r"
    mv "/usr/lib/systemd/system/CNetworkManager.service" "/usr/lib/systemd/system/NetworkManager.service"
    sleep 0.5s
    echo -ne "${OE} Disabled xfce at startup:.\r"
    mv "/usr/lib/systemd/system/CNetworkManager-dispatcher.service" "/usr/lib/systemd/system/NetworkManager-dispatcher.service"
    sleep 0.5s
    echo -ne "${OE} Disabled xfce at startup:..\r"
    mv "/usr/lib/systemd/system/CNetworkManager-wait-online.service" "/usr/lib/systemd/system/NetworkManager-wait-online.service"
    sleep 0.5s
    echo -ne "${OE} Disabled xfce at startup:...\r"
    mv "/usr/lib/systemd/system/Clightdm.service" "/usr/lib/systemd/system/lightdm.service"
    sleep 0.5s
    echo -ne "${OA} Disabled xfce at startup:...[DISABLED]\n"
else
    echo -ne "${OE}NO INPUT FOUND:\n${OF}\tIf you wish to activate xfce on stratup:\n"
    echo -ne "${OF}\t\tEnter ${OA}'$0 -e'\n"
    echo -ne "${OF}\tIf you wish to disable xfce on startup:\n\t\tEnter ${OE}'$0 -d'\n"

echo -ne "${OF}This script was created by ${OA}(c) Henry Letellier\n"