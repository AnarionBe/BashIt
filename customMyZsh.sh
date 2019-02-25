#!/bin/sh

sudo apt-get update
# Check if everything is install on this computer (on debian)
install=""

if ! type "curl" > /dev/null; then
    install="$install curl"
fi
if ! type "git" > /dev/null; then
    install="$install git" 
fi
if ! type "wget" > /dev/null; then
    install="$install wget"
fi 
if ! type "zsh" > /dev/null; then
    install="$install zsh"
fi

sudo apt-get install -y $install

# Get everything we need for oh-my-zsh
# Installation automatique de oh-my-zsh
cd 
"exit" | sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

mkdir -p ~/.local/share/fonts
mkdir -p ~/.config/fontconfig/conf.d

mv PowerlineSymbols.otf ~/.local/share/fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
mv DejaVu\ Sans\ Mono\ Nerd\ Font\ Complete.ttf ~/.config/fontconfig/conf.d/

fc-cache -      f

cp .zshrcValentin ~/.zshrc
cp .bashrcMarco ~/.bashrc
