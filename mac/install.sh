#!/bin/bash

rm -fr ~/.vim
mkdir -p ~/.vim

cp -f                                 \
    dot-vim/taglist_46.zip            \
    dot-vim/bufexplorer-7.4.6.zip     \
    dot-vim/winmanager.zip            \
    dot-vim/genutils-2.5.zip          \
    dot-vim/lookupfile-1.8.zip        \
    dot-vim/omnicppcomplete-0.41.zip  \
    ~/.vim

cd ~/.vim
unzip taglist_46.zip
unzip bufexplorer-7.4.6.zip
unzip winmanager.zip
unzip genutils-2.5.zip
unzip lookupfile-1.8.zip
unzip omnicppcomplete-0.41.zip
cd -

cp -f dot-vim/plugin/* ~/.vim/plugin/

mkdir -p ~/.vim/after/ftplugin
cp -f dot-vim/after/ftplugin/*  ~/.vim/after/ftplugin

cp -f vimrc ~/.vimrc
cp -f realpath.sh rebuild_workspace.sh ~/
