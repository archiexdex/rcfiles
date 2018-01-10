#!/bin/sh

# copy from jxcodetw

# check needed tools
sudo apt-get install git vim zsh

# clone whole repository to .jxcode.config.d
git clone https://github.com/archiexdex/rcfiles.git ~/.archiexdex.config.d

# screenrc
ln -s ~/.archiexdex.config.d/.screenrc ~/.screenrc

# vimrc
ln -s ~/.archiexdex.config.d/vimrc ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "vimrc done.\n"

# oh-my-zsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh
rm ~/.zshrc
ln -s ~/.archiexdex.config.d/.zshrc ~/.zshrc

# rmate
wget -O /usr/local/bin/rmate https://raw.github.com/aurora/rmate/master/rmate
chmod a+x /usr/local/bin/rmate
# rmate example
# local client: ssh -R <port>:localhost:<port> user@example.com
# remote client: rmate -p <port> file

