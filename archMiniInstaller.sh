sudo pacman -S $(cat packages.txt) --noconfirm
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y $(cat flatpaks.txt) -y
sudo cp download.sh /usr/bin/download.sh

rm -rf ~/.config
mkdir ~/.config
mv config ~/.config

rm -rf ~/.gnpug
mkdir ~/.gnpug
mv gnupg ~/.gnpug

rm -rf ~/.icons
mkdir ~/.icons
mv icons ~/.icons

rm -rf ~/.local
mkdir ~/.local
mv local ~/.local

rm -rf ~/.themes
mkdir ~/.themes
mv themes ~/.themes

sudo systemctl disable lightdm.service
mv startxatlogin.sh /etc/profile.d/startxatlogin.sh

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S mangohud minecraft-launcher mugshot --noconfirm

sudo groupadd docker
sudo usermod -aG docker $USER
cd
mkdir Downloads Pictures Documents
cd ~/Downloads
~/.local/bin/gdown https://drive.google.com/u/0/uc?id=1zgBrmyiMpSfW9xsZ9A4ejvR0lktWlTRR&export=download
7z x 08-07-22_linux_infinity_13-27.7z -o08-07-22_linux_infinity_13-27
cd 08-07-22_linux_infinity_13-27
./pull.sh

cd
echo exec xfce4-session > .xinitrc
