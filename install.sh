sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S --needed - < ~/cosmology/packages

mkdir -p ~/.themes
tar -xJf ~/cosmology/Kripton-v40.tar.xz -C ~/cosmology
cp -r ~/cosmology/Kripton-v40 ~/.themes/
gsettings set org.gnome.desktop.interface gtk-theme "Kripton-v40"

sudo systemctl enable sddm bluetooth.service
sudo systemctl start bluetooth.service

cp -r ~/cosmology/config/* ~/.config/

papirus-folders -t Papirus -C teal -u
