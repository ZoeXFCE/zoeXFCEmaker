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
