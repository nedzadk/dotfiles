#!/bin/bash

# Backup old config 
mv ~/.vim ~/.vim.backup
mv ~/.vimrc ~/.vimrc.old


# Install vim plug 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# SymLink vim configuration 
ln -s $(pwd)/vim/vimrc ~/.vimrc
