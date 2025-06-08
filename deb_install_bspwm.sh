!#/bin/bash
#Installscript BSPWM for minimal debian 12 install

sudo apt updade -y && sudo apt upgrade -y

#Install nala
sudo apt install nala -y

sudo nala install bspwm sxhkd polybar picom dunst nitrogen rofi network-manager-gnome firefox-esr flatpak tlp vim btop neofetch fprintd libpam-fprintd wiregurd-tools curl xfce4-power-manager thunar papirus-icon-theme blueman tlp arandr bluez-tools cups cups-browsed avahi-daemon libreoffice system-config-printer keepassxc libreoffice-l10n-de iptables libnetfilter-queue1 preload geany materia-gtk-theme elementary-xfce-icon-theme fonts-noto catfish ibavcodec-extra vlc xbaxklight pamixer flameshot i3lock xfce4-terminal 

#Create Config Folders
mkdir ~/.config/bspwm 
mkdir ~/.config/sxhkd 
mkdir ~/.config/polybar 
mkdir ~/.config/picom
mkdir ~/.config/dunst


#Copy Dunst Config
sudo cp /etc/dunst/dunstrc dunst/

#Enable TLP
sudo systemctl enable tlp --now

#Install Thinkpad T15 Audiofix
sudo touch /etc/modprobe.d/dsp-fix.conf
sudo chmod 777 /etc/modprobe.d/dsp-fix.conf
sudo echo "options snd_intel_dspcfg dsp_driver=1" > /etc/modprobe.d/dsp-fix.conf


#Install Brave Browser
curl -fsS https://dl.brave.com/install.sh | sh

#Add Flathub Repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#Install Flatpaks
flatpak install flathub com.nextcloud.desktopclient.nextcloud -y
flatpak install flathub org.keepassxc.KeePassXC -y
flatpak install flathub eu.betterbird.Betterbird -y

cp ./bspwm/ ~/.config/
cp ./sxhkd/ ~/.config/
cp ./polybar/ ~/.config/
chmod +x ~/.config/bspwm/ -R
chmod +x ~/.config/sxhkd/ -R
chmod +x ~/.config/polybar/ -R 
