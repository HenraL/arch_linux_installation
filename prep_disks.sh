#!/bin/bash
ping google.com
loadkeys fr-latin1
timedatectl set-ntp true
timedatectl set-timezone Europe/Paris
timedatectl status
fdisk -l
fdisk /dev/sda
