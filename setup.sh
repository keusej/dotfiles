#!/bin/bash
# Simple setup.sh for configuring rpm based linux setup

sudo yum groupinstall \"development\"
sudo yum groupinstall \"development-tools\"

#useful tools to install
sudo yum install ack
sudo yum install npm

# Install jshint to allow checking of JS code 
# http://jshint.com/
npm install -g jshint

#ln -sb dotfiles/.screenrc .
ln -sb dotfiles/.profile .
ln -sb dotfiles/.bashrc .
ln -sb dotfiles/.vimrc .
ln -sb dotfiles/.gvimrc .
ln -sb dotfiles/.vim .

# TODO add more vim bundles
git clone https://github.com/tpope/vim-surround.git .vim/bundle/ 
git clone https://github.com/godlygeek/tabular.git .vim/bundle/ 
git clone https://github.com/tpope/vim-fugitive.git .vim/bundle/ 
git clone https://github.com/tpope/vim-sensible.git .vim/bundle/ 
git clone https://github.com/kien/rainbow_parentheses.vim.git .vim/bundle/
git clone https://github.com/scrooloose/nerdtree.git .vim/bundle/
