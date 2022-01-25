#!/bin/bash
pacman -Syy
pacstrap /mnt base base-devel linux linux-firmware nano emacs dhcpcd net-tools grub
genfstab -U /mnt > /mnt/etc/fstab
echo "going to open the langage file"
arch-chroot /mnt
nano /etc/locale.gen
echo "generating keymaps"
locale-gen
locale
echo LANG=fr_FR.UTF-8 > /etc/locale.conf
export LANG=fr_FR.UTF-8
ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime
hwclock --systohc --utc
echo my_client_henryletellier-pc > /etc/hostname
systemctl enable dhcpcd
echo "Password for the root"
passwd root
echo "creating user Romain"
useradd -m -g users -G wheel -s /bin/bash romain
echo "Password for romain"
passwd romain
echo "creating user henry"
useradd -m -g users -G wheel -s /bin/bash henry
echo "password for henry"
passwd henry
echo "creating user Leslie"
useradd -m -g users -G wheel -s /bin/bash leslie
echo "Password for leslie"
passwd leslie
echo "creating group adm"
useradd 
echo "creating group managers"
echo "assigining accounts to respective groups"

#sudo pacman -S --needed xfce4 mousepad parole ristretto thunar-archive-plugin thunar-media-tags-plugin xfce4-battery-plugin xfce4-datetime-plugin xfce4-mount-plugin xfce4-netload-plugin xfce4-notifyd xfce4-pulseaudio-plugin xfce4-screensaver xfce4-taskmanager |xfce4-wavelan-plugin xfce4-weather-plugin xfce4-whiskermenu-plugin xfce4-xkb-plugin file-roller network-manager-applet leafpad epdfview galculator lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings capitaine-cursors arc-gtk-theme xdg-user-dirs-gtk
sudo pacman -Sy --needed xfce4
sudo pacman -Sy --needed mousepad
sudo pacman -Sy --needed parole
sudo pacman -Sy --needed ristretto
sudo pacman -Sy --needed thunar-archive-plugin
sudo pacman -Sy --needed thunar-media-tags-plugin
sudo pacman -Sy --needed xfce4-battery-plugin
sudo pacman -Sy --needed xfce4-datetime-plugin
sudo pacman -Sy --needed xfce4-mount-plugin
sudo pacman -Sy --needed xfce4-netload-plugin
sudo pacman -Sy --needed xfce4-notifyd
sudo pacman -Sy --needed xfce4-pulseaudio-plugin
sudo pacman -Sy --needed xfce4-screensaver
sudo pacman -Sy --needed xfce4-taskmanager
sudo pacman -Sy --needed xfce4-wavelan-plugin
sudo pacman -Sy --needed xfce4-weather-plugin
sudo pacman -Sy --needed xfce4-whiskermenu-plugin
sudo pacman -Sy --needed xfce4-xkb-plugin
sudo pacman -Sy --needed file-roller
sudo pacman -Sy --needed network-manager-applet
sudo pacman -Sy --needed leafpad
sudo pacman -Sy --needed epdfview
sudo pacman -Sy --needed galculator
sudo pacman -Sy --needed lightdm
sudo pacman -Sy --needed lightdm-gtk-greeter
sudo pacman -Sy --needed lightdm-gtk-greeter-settings
sudo pacman -Sy --needed capitaine-cursors
sudo pacman -Sy --needed arc-gtk-theme
sudo pacman -Sy --needed xdg-user-dirs-gtk
#sudo pacman -S --needed xfce4-goodies
sudo pacman -S --needed virtualbox-guest-utils xf86-video-vmware
systemctl enable lightdm
systemctl enable NetworkManager
