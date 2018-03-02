#!/bin/bash
cd ..
cp vimconf/.vim/ .vim
ln -s .vim/vimrc .vimrc
cd .vim
git clone https://github.com/tpope/vim-pathogen.git pathogen
mkdir autoload
cd autoload
ln -s ../pathogen/autoload/pathogen.vim .
cd ..
mkdir bundle
cd bundle
echo "installation des packages"
#liste des plugins à clone
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/bling/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/majutsushi/tagbar
git clone https://github.com/godlygeek/tabular
git clone https://github.com/sirver/ultisnips
git clone https://github.com/flazz/vim-colorschemes
git clone https://github.com/raimondi/delimitmate
git clone https://github.com/lilydjwg/colorizer
echo "Done !"
