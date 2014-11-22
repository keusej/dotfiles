#!/bin/bash
# Simple setup.sh for configuring rpm based linux setup

sudo yum groupinstall \"development\"
sudo yum groupinstall \"development-tools\"
sudo yum install vim-X11 perl-Pod-Perldoc

#useful tools to install
sudo yum install ack
sudo yum install npm

# Install jshint to allow checking of JS code 
# http://jshint.com/
sudo npm install -g jshint

#ln -sb dotfiles/.screenrc .
cd ~
ln -sb dotfiles/.profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.vimrc .
ln -sb dotfiles/.gvimrc .
ln -sb dotfiles/.vim .

git clone https://github.com/tpope/vim-surround.git .vim/bundle/vim-surround 
git clone https://github.com/godlygeek/tabular.git .vim/bundle/tabular
git clone https://github.com/tpope/vim-fugitive.git .vim/bundle/vim-fugitive
git clone https://github.com/tpope/vim-sensible.git .vim/bundle/vim-sensible
git clone git://github.com/altercation/vim-colors-solarized.git .vim/bundle/solarized
git clone https://github.com/kien/rainbow_parentheses.vim.git .vim/bundle/rainbow_parenthesis.vim
git clone https://github.com/scrooloose/nerdtree.git .vim/bundle/nerdtree
git clone https://github.com/bling/vim-airline .vim/bundle/vim-airline
