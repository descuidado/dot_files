# dot_files
sudo pacman-key --init
sudo pacman-key --populate
sudo pacman -Syyu archlinux-keyring
sudo pacman -S vlc mpv arduino-cli platformio-core fish audacious bash-completion lightdm lightdm-gtk-greeter telegram-desktop neovim git zig xsel parecellite lsd bat tldr galculator engrampa persepolis kicad
sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
yay -S paru
paru -S arduino-ide-bin
paru -S visual-studio-code-bin
sudo systemctl enable lightdm.service

sudo nvim /etc/lightdm/lightdm.conf
under '''[Seat:*]''' make sure:
pam-autologin-service=lightdm-autologin
autologin-guest=false
autologin-user=whisper
autologin-user-timeout=0
are uncommented and configured well

sudo groupadd -r autologin
sudo gpasswd -a whisper autologin
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
chsh -s $(which fish)

setxkbmap us,ir -variant ,pes_keypad -option grp:caps_toggle

nvim ~/.config/conky/conky.conf

set -g fish_greeting ""
sudo usermod -a -G dialout whisper
sudo usermod -a -G uucp $USER
sudo nvim /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo cp 99-USBasp.rules /etc/udev/rules.d/99-USBasp.rules
sudo chmod 666 /dev/bus/usb/001/005
pactl set-sink-volume @DEFAULT_SINK@ -5%
pactl set-sink-volume @DEFAULT_SINK@ +5%
pactl set-sink-volume @DEFAULT_SINK@ 100
pactl set-sink-volume @DEFAULT_SINK@ 40%
nvim .config/nvim/lua/config/autocmds.lua
nvim .config/nvim/lua/config/keymaps.lua

