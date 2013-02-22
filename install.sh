#!/bin/sh

vim +BundleInstall +qall

VIM=~/.vim

echo '===    installing .vimrc, .gvimrc...    ==='
cd $VIM/..
ln -s .vim/vimrc .vimrc
ln -s .vim/gvimrc .gvimrc

echo '===    installing command-t...          ==='
cd $VIM/bundle/command-t/ruby/command-t
ruby extconf.rb
make

echo '===    installing powerline             ==='
cd $VIM/bundle/powerline/
sudo python setup.py install
