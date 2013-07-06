#!/bin/bash
# Simple setup.sh for configuring rpm based linux setup

sudo yum groupinstall \"development\"
sudo yum groupinstall \"development-tools\"
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

#useful tools to install
sudo yum install ack
