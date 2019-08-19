# arc theme
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install arc-theme

# arc icon
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install arc-icons

# flat theme
sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install flatabulous-theme

# flat icon
sudo add-apt-repository ppa:noobslab/icons
sudo apt-get update
sudo apt-get install ultra-flat-icons

# unity tweak tool
sudo apt install unity-tweak-tool

# neofetch
sudo add-apt-repository ppa:dawidd0811/neofetch
sudo apt update && sudo apt install neofetch

# v2ray
bash <(curl -L -s https://install.direct/go.sh)

# neovim
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim

# fira mono fonts
# wget https://github.com/mozilla/Fira/archive/master.zip
# unzip master.zip
# sudo mkdir -p /usr/share/fonts/truetype/fira
# sudo cp Fira-master/ttf/* /usr/share/fonts/truetype/fira

# gwflist
# https://raw.githubusercontent.com/gfwlist/gfwlist/master/gfwlist.txt

# task manger 
sudo apt install indicator-multiload

# chinese input method
sudo apt install fcitx fcitx-im fcitx-configtool
sudo apt install fcitx-qt
sudo apt install fcitx-sogoupinyin
# copy following contents into /etc/profile
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS="@im=fcitx"

#curl -fLo ~/.vim/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# [archlinuxcn]
# SigLevel = Never
# Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch

# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx
# export XMODIFIERS="@im=fcitx"

#git clone git@github.com:SXiangWu/config.git 
#git clone https://github.com/dikiaap/dotfiles.git
#git clone https://github.com/addy-dclxvi/i3-starterpack.git
#sudo pacman -Syuu
#sudo pacman -S v2ray
#sudo pacman -S fcitx fcitx-im fcitx-configtool
#sudo pacman -S fcitx-sogoupinyin
#sudo pacman -S chromium
#sudo pacman -S adobe-source-code-pro-fonts
#sudo pacman -S otf-fira-mono
#sudo pacman -S termite
#setxkbmap -option "ctrl:swapcaps"

#sudo pacman -S neovim neofetch 

#pip install --upgrade --user ase
#pip install neovim jedi flake8 autopep8 --user
#pip install matplotlib numpy scipy sympy pandas jupyter --user

# sudo apt install povray


