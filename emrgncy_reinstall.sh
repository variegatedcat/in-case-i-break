## install paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si --noconfirm
cd ..
rm -rf paru

## utilities

sudo pacman -S --noconfirm btop htop geany vim yazi reflector zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting zsh-theme-powerlevel10k fzf kitty NetworkManager ccache blueman libsecret




sudo cp /home/$USER/reinstall/reflector.txt /etc/xdg/reflector/reflector.conf
systemctl enable --now reflector.timer


## theming

sudo pacman -S --noconfirm qt5ct qt6ct kvantum nwg-look




#dev
sudo pacman -S --noconfirm godot meld lazygit python


## security
sudo pacman -S --noconfirm rkhunter clamav lynis firejail apparmor ufw
sudo systemctl enable --now ufw.service
sudo systemctl enable --now clamav-freshclam-once.timer
sudo systemctl enable --now apparmor.service
sudo rkhunter --update


## accessories

sudo pacman -S --noconfirm fastfetch vlc cava spotify-player pavucontrol ncdu opentabletdriver audacity flameshot xfce4-screenshooter gnome-screenshot gparted gnome-disk-utility gnome-keyring gnome-system-monitor gnome-tweaks qjackctl qpwgraph






## aur

paru -Syu --noconfirm obs-studio-git stremio openrgb-bin vscodium-bin librewolf-bin polychromatic openrazer-daemon gufw playerctl vesktop xfce4-battery-plugin xfce4-pulseaudio-plugin xfce4-whiskermenu-plugin


## theming aur

paru -S --noconfirm tela-circle-icon-theme-pruple rose-pine-cursor



## wrapping up
sudo lynis audit system
chsh -s /bin/zsh
sudo systemctl disable systemd-networkd.service
sudo systemctl NetworkManager.service
cp /home/$USER/reinstall/lazy.txt /home/$USER/lazy.txt
echo "ok, you can reboot now"
