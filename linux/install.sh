#!/bin/bash

ctags --help 2>&1 | grep "command not found" > /dev/null 2>&1
if [ $? -eq 0 ] ; then  #string "command not found" found, so ctags is not installed
    echo "ctags is not installed, thus install it..."
    yum -y install ctags
    if [ $? -eq 0 ] ; then
        echo "ctags is installed successfully"
    else
        echo "failed to install ctags"
        exit 1
    fi
else
    echo "ctags is already installed."
fi


cscope --help 2>&1 | grep "command not found" > /dev/null 2>&1
if [ $? -eq 0 ] ; then  #string "command not found" found, so cscope is not installed
    echo "cscope is not installed, thus install it..."
    yum -y install cscope 
    if [ $? -eq 0 ] ; then
        echo "cscope is installed successfully"
    else
        echo "failed to install cscope"
        exit 1
    fi
else
    echo "cscope is already installed."
fi


unzip --help 2>&1 | grep "command not found" > /dev/null 2>&1
if [ $? -eq 0 ] ; then  #string "command not found" found, so unzip is not installed
    echo "unzip is not installed, thus install it..."
    yum -y install unzip 
    if [ $? -eq 0 ] ; then
        echo "unzip is installed successfully"
    else
        echo "failed to install unzip"
        exit 1
    fi
else
    echo "unzip is already installed."
fi

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
cp -f rebuild_workspace.sh /home/

echo alias vi=\'vim\' >> ~/.bashrc
