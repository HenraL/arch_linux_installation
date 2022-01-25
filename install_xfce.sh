#!/bin/bash
echo "This program was created by henry letellier"
echo "Installing Xorg"
sudo pacman -S --needed xorg
echo "installing required ressources for xfce"
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
sudo pacman -Sn --needed xfce4-goodies
sudo pacman -Sy --needed virtualbox-guest-utils xf86-video-vmware
echo "installing firefox"
sudo pacman -Sy --noconfirm firefox firefox-i18n-en-us
sudo pacman -Sy --noconfirm flatpak
sudo pacman -Sy --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install tree
cd /etc/profile.d/
echo "Setting up help scripts"
cd $HOME
mkdir .my_scripts
echo -ne '#!/bin/bash\nflatpak run org.mozilla.firefox\n' > firefox
echo -ne '#!/bin/bash\ncd /etc\nemacs -nw profile\n' > profile
echo -ne '#!/bin/bash\necho "toilet-deej.toilet"\n' > toilet
echo -ne "#!/bin/bash\necho \" 1  | sl: sl\"\necho \" 2  | toilet: figlet 'text'\"\necho \" 3  | toilet: toilet 'text'\"\necho \" 4  | toilet: toilet -f mono12 -F metal 'text' \"\necho \"5.0 | cmatrix: cmatrix\"\necho \"5.1 | (bold version) cmatrix: cmatrix -ba\"\necho \"5.2 | (epileptic version) cmatrix: cmatrix -be <return> press <r>\"\necho \"5.3 | (pause cmatrix) cmatrix: cmatrix -be <return> press <p>\"\necho \"5.4 | (quit cmatrix) cmatrix: cmatrix -be <return> press <q>\"\necho \"5.5 | (maze cmatrix) cmatrix: cmatrix -be <return> press <m>\"\necho \"5.6 | (bold cmatrix) cmatrix: cmatrix <return> press <b>\"\necho \"5.7 | (normal cmatrix) cmatrix: cmatrix -be <return> press <n>\"\necho \"5.10| (minecraft cmatrix) cmatrix: cmatrix -bc <return> \"\necho \"5.8 | (color cmatrix) cmatrix: cmatrix -be <return>:\"\necho \"    |                 press <!> for red\"\necho \"    |                 press <^> for lightblue\"\necho \"    |                 press <$> for darkblue\"\necho \"    |                 press <%> for purple\"\necho \"    |                 press <&> for white and grey\"\necho \"    |                 press <#> for yellow and brown and white\"\necho \"    |                 press <@> for green\"\necho \"    |                 press <down> to set the matrix in full bold\"\necho \"5.9 | (speed cmatrix) cmatrix: cmatrix -be <return>:\"\necho \"    |                 press <0> for 'extremely fast'\"\necho \"    |                 press <1> for 'quite fast'\"\necho \"    |                 press <2> for 'a normal speed'\"\necho \"    |                 press <3> for 'a bit slower'\"\necho \"    |                 press <4> for 'slow'\"\necho \"    |                 press <5> for 'even slower'\"\necho \"    |                 press <6> for 'a bit slower than previous'\"\necho \"    |                 press <7> for 'same speed as previous'\"\necho \"    |                 press <8> for 'same speed as previous'\"\necho \"    |                 press <9> for 'same speed as previous'\"\necho \"6  | yes: yes 'text' (loop with a given text)\"\necho \"7  | factor: factor nb\"\necho \"8  | viu:  viu 'filename.extension'  -r -t\"\necho \"9  | (file explorer in terminal) mc: mc\"\necho \"10  | (music player in terminal) cmus: cmus\"\necho \"    | PS: on very first launch \"\necho \"    |     launch cmus just outside of the folder containig your music\"\necho \"    |     once launched, type ':add ~/<folderName>'\"\necho \"    |     You should see your music appear, happy listening\"\necho \"11  | (taskmanager) htop: htop\"\necho \"12  | (beautify cat) bat : bat <file> or <file_output> | bat\"" > existing_commands
ln -s "existing_commands" "ec"

#localectl set-x11-keymap br-abnt2
echo "Adding the '.my_scripts' to the bashrc path"
echo -ne 'export PATH="${HOME}/.my_scripts:$PATH"\n' >> $HOME/.bashrc
echo "gathering more required packages"
sudo pacman -Sy --noconfirm curl
cd "${HOME}/Musik"
curl 
setxkbmap -layout fr
sudo pacman -Sy --noconfirm  sl
sudo snap install toilet-deej
sudo pacman -Sy htop
sudo pacman -Sy --noconfirm cmatrix
sudo pacman -Sy --noconfirm viu
sudo pacman -Sy --noconfirm cmus
sudo pacman -Sy --noconfirm bat
sudo pacman -Sy --noconfirm mc
toilet -f mono12 -F metal "Xfce has sucessefully been installed"
toilet-deej.toilet -f mono12 -F metal "Xfce has sucessefully been installed"
echo "Created by Henry Letellier"
#sudo systemctl enable lightdm
#sudo systemctl enable NetworkManager