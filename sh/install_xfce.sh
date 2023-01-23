#!/bin/bash
echo "This program was created by henry letellier"
sleep 4s
echo "Installing Xorg"
sudo pacman -Sy --needed xorg
echo "installing required ressources for xfce"
sleep 2s
sudo pacman -Syy --noconfirm --needed xf86-video-intel mesa
sudo pacman -Syy --noconfirm --needed xfce4
sudo pacman -Syy --noconfirm --needed mousepad
sudo pacman -Syy --noconfirm --needed parole
sudo pacman -Syy --noconfirm --needed ristretto
sudo pacman -Syy --noconfirm --needed thunar-archive-plugin
sudo pacman -Syy --noconfirm --needed thunar-media-tags-plugin
sudo pacman -Syy --noconfirm --needed xfce4-battery-plugin
sudo pacman -Syy --noconfirm --needed xfce4-datetime-plugin
sudo pacman -Syy --noconfirm --needed xfce4-mount-plugin
sudo pacman -Syy --noconfirm --needed xfce4-netload-plugin
sudo pacman -Syy --noconfirm --needed xfce4-notifyd
sudo pacman -Syy --noconfirm --needed xfce4-pulseaudio-plugin
sudo pacman -Syy --noconfirm --needed xfce4-screensaver
sudo pacman -Syy --noconfirm --needed xfce4-taskmanager
sudo pacman -Syy --noconfirm --needed xfce4-wavelan-plugin
sudo pacman -Syy --noconfirm --needed xfce4-weather-plugin
sudo pacman -Syy --noconfirm --needed xfce4-whiskermenu-plugin
sudo pacman -Syy --noconfirm --needed xfce4-xkb-plugin
sudo pacman -Syy --noconfirm --needed file-roller
sudo pacman -Syy --noconfirm --needed network-manager-applet
sudo pacman -Syy --noconfirm --needed leafpad
sudo pacman -Syy --noconfirm --needed epdfview
sudo pacman -Syy --noconfirm --needed galculator
sudo pacman -Syy --noconfirm --needed lightdm
sudo pacman -Syy --noconfirm --needed lightdm-gtk-greeter
sudo pacman -Syy --noconfirm --needed lightdm-gtk-greeter-settings
sudo pacman -Syy --noconfirm --needed capitaine-cursors
sudo pacman -Syy --noconfirm --needed arc-gtk-theme
sudo pacman -Syy --noconfirm --needed xdg-user-dirs-gtk
sudo pacman -Sny --noconfirm --needed xfce4-goodies
sudo pacman -Syy --noconfirm --needed virtualbox-guest-utils xf86-video-vmware
echo "installing firefox"
sleep 2s
sudo pacman -Syy --noconfirm firefox firefox-i18n-en-us
sudo pacman -Syy --noconfirm flatpak
sudo pacman -Syy --noconfirm --needed base-devel git
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
sudo snap install tree
sudo pacman -Sy --noconfirm curl
cd /etc/profile.d/
echo "Setting up help scripts"
sleep 2s
cd $HOME
sleep 2s
sudo mkdir .my_scripts
ls
sleep 2s
echo -ne '#!/bin/bash\nflatpak run org.mozilla.firefox\n' >firefox
echo -ne '#!/bin/bash\ncd /etc\nemacs -nw profile\n' >profile
echo -ne '#!/bin/bash\necho "toilet-deej.toilet"\n' >toilet
echo -ne "#!/bin/bash\necho \" 1  | sl: sl\"\necho \" 2  | toilet: figlet 'text'\"\necho \" 3  | toilet: toilet 'text'\"\necho \" 4  | toilet: toilet -f mono12 -F metal 'text' \"\necho \"5.0 | cmatrix: cmatrix\"\necho \"5.1 | (bold version) cmatrix: cmatrix -ba\"\necho \"5.2 | (epileptic version) cmatrix: cmatrix -be <return> press <r>\"\necho \"5.3 | (pause cmatrix) cmatrix: cmatrix -be <return> press <p>\"\necho \"5.4 | (quit cmatrix) cmatrix: cmatrix -be <return> press <q>\"\necho \"5.5 | (maze cmatrix) cmatrix: cmatrix -be <return> press <m>\"\necho \"5.6 | (bold cmatrix) cmatrix: cmatrix <return> press <b>\"\necho \"5.7 | (normal cmatrix) cmatrix: cmatrix -be <return> press <n>\"\necho \"5.10| (minecraft cmatrix) cmatrix: cmatrix -bc <return> \"\necho \"5.8 | (color cmatrix) cmatrix: cmatrix -be <return>:\"\necho \"    |                 press <!> for red\"\necho \"    |                 press <^> for lightblue\"\necho \"    |                 press <$> for darkblue\"\necho \"    |                 press <%> for purple\"\necho \"    |                 press <&> for white and grey\"\necho \"    |                 press <#> for yellow and brown and white\"\necho \"    |                 press <@> for green\"\necho \"    |                 press <down> to set the matrix in full bold\"\necho \"5.9 | (speed cmatrix) cmatrix: cmatrix -be <return>:\"\necho \"    |                 press <0> for 'extremely fast'\"\necho \"    |                 press <1> for 'quite fast'\"\necho \"    |                 press <2> for 'a normal speed'\"\necho \"    |                 press <3> for 'a bit slower'\"\necho \"    |                 press <4> for 'slow'\"\necho \"    |                 press <5> for 'even slower'\"\necho \"    |                 press <6> for 'a bit slower than previous'\"\necho \"    |                 press <7> for 'same speed as previous'\"\necho \"    |                 press <8> for 'same speed as previous'\"\necho \"    |                 press <9> for 'same speed as previous'\"\necho \"6  | yes: yes 'text' (loop with a given text)\"\necho \"7  | factor: factor nb\"\necho \"8  | viu:  viu 'filename.extension'  -r -t\"\necho \"9  | (file explorer in terminal) mc: mc\"\necho \"10  | (music player in terminal) cmus: cmus\"\necho \"    | PS: on very first launch \"\necho \"    |     launch cmus just outside of the folder containig your music\"\necho \"    |     once launched, type ':add ~/<folderName>'\"\necho \"    |     You should see your music appear, happy listening\"\necho \"11  | (taskmanager) htop: htop\"\necho \"12  | (beautify cat) bat : bat <file> or <file_output> | bat\"" >existing_commands
ln -s "existing_commands" "ec"
echo -ne "#!/bin/bash\nrc.d start  sshd\n#The post message should be.\n#:: Starting Secure Shell Daemon                                                   [DONE] " >start_openssh
ln -s "start_openssh" "saossh"
echo -ne "#!/bin/bash\nif [ $# -eq 1]\nthen\n\tssh  root@${1}\nelse\n\techo \"Please enter the IP you wish to configure openssh to connect to.\n\"\nfi\n\n# The authenticity of host '$1 ($1)' can't be established.\n# \n# ECDSA key fingerprint is 7c:18:34:25:af:ac:97:92:cb:72:5f:4b:07:57:25:de.\n# \n#Are you sure you want to continue connecting (yes/no)? yes\n# \n# Warning: Permanently added '192.168.1.142' (ECDSA) to the list of known hosts.\n# \n# root@192.168.1.142's password: \n# \n# Last login: Tue Jun 21 18:33:19 2011\n# \n" >add_ip_to_openssh
ln -s "add_ip_to_openssh" "aiptssh"
ln -s "add_ip_to_openssh" "add_ip"
curl -o "activate_deactivae_xfce.sh" "https://raw.githubusercontent.com/HenraL/arch_linux_installation/main/sh/activate_deactivate_xfce.sh"
ln -s "enabe_disable_xfce" "edxfce"
echo -ne "#!/bin/bash\nenable_disable_xfce -e" >enable_xfce
ln -s "enable_xfce" "exfce"
echo -ne "#!/bin/bash\nenable_disable_xfce -d" >disable_xfce
ln -s "disable_xfce" "dxfce"
ls
sleep 2s
#localectl set-x11-keymap br-abnt2
echo "Adding the '.my_scripts' to the bashrc path"
echo -ne 'export PATH="${HOME}/.my_scripts:$PATH"\n' >>$HOME/.bashrc
echo "gathering more required packages"
ls
sleep 2s
cd "${HOME}/Music"
curl -L -o 'Ed Sheeran - Thinking Out Loud (Official Music Video).mp3' 'https://raw.githubusercontent.com/HenraL/arch_linux_installation/main/mp3/Ed%20Sheeran%20-%20Thinking%20Out%20Loud%20(Official%20Music%20Video).mp3'
curl -L -o 'In den Tiroler Bergen Mit Andreas Aschaber (Auner Andi) aus Westendorf Tirol.mp3' 'https://github.com/HenraL/arch_linux_installation/blob/main/mp3/In%20den%20Tiroler%20Bergen%20Mit%20Andreas%20Aschaber%20(Auner%20Andi)%20aus%20Westendorf%20Tirol.mp3?raw=true'
curl -L -o "The Weather Girls - It's Raining Men (Video).mp3" "https://raw.githubusercontent.com/HenraL/arch_linux_installation/main/mp3/The%20Weather%20Girls%20-%20It's%20Raining%20Men%20(Video).mp3"
curl -L -o "_Weird_ Al Yankovic - Amish Paradise (Official Parody of _Gangsta's Paradise_).mp3" "https://raw.githubusercontent.com/HenraL/arch_linux_installation/main/mp3/_Weird_%20Al%20Yankovic%20-%20Amish%20Paradise%20(Official%20Parody%20of%20_Gangsta's%20Paradise_).mp3"
ls
sleep 2s
cd "${HOME}/Pictures"
curl -L -o "thats-all-folks-looney-toons.gif" "https://raw.githubusercontent.com/HenraL/arch_linux_installation/main/img/thats-all-folks-looney-toons.gif"
ls
sleep 2s
cd "${HOME}/Videos"
curl -L -o "my_video.webm" 'https://github.com/HenraL/arch_linux_installation/blob/main/videos/my_video.webm?raw=true'
ls
sleep 2s
cd "${HOME}"
ls
sleep 2s
setxkbmap -layout fr
sudo pacman -Sy --noconfirm sl
sudo snap install toilet-deej
sudo pacman -Sy htop
sudo pacman -Sy --noconfirm cmatrix
sudo pacman -Sy --noconfirm viu
sudo pacman -Sy --noconfirm cmus
sudo pacman -Sy --noconfirm bat
sudo pacman -Sy --noconfirm mc
# toilet -f mono12 -F metal "Xfce has successfully been installed"
toilet-deej.toilet -f mono12 -F metal "Xfce has successfully been installed"
sleep 2s
echo "Installing openssh"
pacman -Sy openssh
echo "\nDAEMONS=(syslog-ng network  netfs dbus gdm sshd crond)\n" >>/etc/rc.conf
echo 'SSHD: ALL' >>/etc/hosts.allow
toilet-deej.toilet -f mono12 -F metal "The OpenSSH protocol has sucessefully been installed"
sleep 2s
echo "Created by Henry Letellier"
sleep 2s
echo "enabling xfce to start at boot up"
sudo systemctl enable lightdm
sudo systemctl enable NetworkManager
echo "Rebinding the ssh ports to 42"
sleep 2s
sudo sed -i "s/#Port 22/#Port 22\n" /etc/ssh/sshd_config
sudo sed -i "s/#   Port 22/#   Port 22\n    Port 42/" /etc/ssh/ssh_config
sudo systemctl restart ssh
sudo systemctl restart sshd
echo "Ports rebound"
viu -1 "thats-all-folks-looney-toons.gif"
#Have a look at:
# [hlatalliard@fedora ~]$ localectl
#    System Locale: LANG=en_GB.UTF-8
#        VC Keymap: fr
#       X11 Layout: fr
# [hlatalliard@fedora ~]$ localectl set-
# set-keymap      set-locale      set-x11-keymap
# [hlatalliard@fedora ~]$ localectl set-keymap
