#!/bin/bash
sudo pacman -Sy --noconfirm firefox firefox-i18n-en-us
sudo pacman -S --noconfirm flatpak
sudo pacman -S --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install tree
cd /etc/profile.d/
mkdir my_scripts
echo -ne '#!/bin/bash\nflatpak run org.mozilla.firefox\n' > firefox
echo -ne '#!/bin/bash\ncd /etc\nemacs -nw profile\n' > profile
localectl set-x11-keymap br-abnt2