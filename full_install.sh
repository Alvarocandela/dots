git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..
rm -rf paru

paru -Syu --noconfirm - < pkglist.txt

sudo systemctl enable iwd networkmanager gdm
paru -G spotify
cd spotify
sed -i '9s/_commit=gc5f8b819/_commit=gc5f8b819-2/' PKGBUILD
sed -i '36s/3cc25f28ae791ac26607117a5df668f803ed8e58f0ace085010a6242fdde97766bdc1c752560850795c9b4324f3e019937fe9af2788a1946ebb70ee781f50d99/9ba6c2d155f683b9a38222d58a2a53a2a5f4b422ed1c0d603af87919ba8a68309aea3354278fd1d5d8142a1568d93b7e83b14c041e749b0c39f3bc155a633ef8/' PKGBUILD
makepkg -si
cd ..
rm -rf spotify
git clone https://github.com/abba23/spotify-adblock.git
cd spotify-adblock
make
sudo make install
cd ..
rm -rf spotify-adblock
sed '7s/Exec=.*/Exec=env LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify'
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
spicetify -n apply
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
stow bspwm coc fondos kitty nvim p10k picom polybar rofi startpage studymode sxhkd xinitrc zathura zsh
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
spicetify -n apply
