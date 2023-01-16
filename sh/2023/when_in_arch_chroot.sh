#!/bin/bash
echo "These are the commands that will be run when in the chroot directory"
LANGUAGE_FILE=/etc/locale.gen
sed -i "s/en_US.UTF-8 UTF-8/#en_US.UTF-8 UTF-8/" $LANGUAGE_FILE
sed -i "s/##en_US.UTF-8 UTF-8/#en_US.UTF-8 UTF-8/" $LANGUAGE_FILE
sed -i "s/#fr_FR.UTF-8 UTF-8/fr_FR.UTF-8 UTF-8/" $LANGUAGE_FILE
sed -i "s/#fr_FR@euro ISO-8SO-8859-15/fr_FR@euro ISO-8SO-8859-15/" $LANGUAGE_FILE
#sed -i "s/#en_GB.UTF-8  UTF-8/en_GB.UTF-8  UTF-8/" $LANGUAGE_FILE
locale-gen
echo LANG=en_GB.UTF-8 > /etc/locale.conf
export LANG=en_GB.UTF-8
echo KEYMAP=fr > /etc/vconsole.conf
echo KEYMAP=fr >> /etc/locale.conf
ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime
hwclock --systohc --utc
echo "Please enter your name (in lowercases):"
read COMPUTER_CLIENT_NAME
COMPUTER_CLIENT_NAME=$(echo $COMPUTER_CLIENT_NAME | tr "ABCDEFGHIJKLMNOPQRSTUVWXYZ" "abcdefghijklmnopqrstuvwxyz" | tr " " "_" | tr "/" "_")
echo "my_client_$COMPUTER_CLIENT_NAME-pc" > /etc/hostname
