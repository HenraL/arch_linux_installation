#!/bin/bash

function reset_partitions {
    fdisk /dev/sda << EEOF
d

d

d

d

d

d

d

d

d

d

d

d

d

d

d

d

d

d

d

d

d

w

EEOF
vgremove -y -y -y -y -f vg1
}

function create_partition {
    fdisk -l
    fdisk /dev/sda << EEOF
o
n
p
1

+17G
t
8E
i
w
EEOF

}

function set_up_pacman {
    pacman -Syy
    pacstrap /mnt base base-devel linux linux-firmware nano emacs dhcpcd net-tools grub
}

PARTITION_NAME=/dev/sda
loadkeys fr-latin1
set-ntp true
timedatectl set-timezone Europe/Paris
reset_partitions
create_partition
set_up_pacman
genfstab -U /mnt >> /mnt/etc/fstab
echo "Going to launch a base system terminal, section 'setting up the base system'"
echo "This script cannot act on this part, please follow the log"
arch-chroot /mnt
