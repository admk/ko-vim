#!/bin/sh

VIM=~/.vim

echo 'Initialising Vundle'
git submodule update --init

echo 'Installing all bundles'
vim +BundleInstall +qall

echo 'Copying .vimrc'
cd $VIM/..
ln -s .vim/vimrc .vimrc
ln -s .vim/gvimrc .gvimrc

echo 'Installing Command-T'
cd $VIM/bundle/command-t/ruby/command-t
ruby extconf.rb
make

echo 'Installing Powerline'
cd $VIM/bundle/powerline/
sudo python setup.py install
