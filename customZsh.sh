#!/bin/sh

# Check if everything is install on this computer (on arch)
#install=""

#if [ ! curl ];then
#    install+="curl "
#fi

#if [ ! git ];then
#    install+="git "
#fi

#if [ ! zsh ];then
#    install+="zsh "
#fi 
#
#if [ ! wget ];then
#    install+="wget "
#fi
#
#install+="powerline-fonts zsh-autosuggestions zsh-syntax-highlighting "
#if [ $install != "" ];then
#    sudo apt-get install $install
#fi
# Get everything we need for oh-my-zsh
# Installation automatique de oh-my-zsh
#cd 
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
#wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
#wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
#
#mkdir -p ~/.local/share/fonts
#mkdir -p ~/.config/fontconfig/conf.d
#
#mv PowerlineSymbols.otf ~/.local/share/fonts/
#mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
#
#fc-cache -vf