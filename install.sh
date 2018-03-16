#!/bin/sh

# copy from jxcodetw

# check needed tools
sudo apt-get install -y git vim zsh

# clone whole repository to .jxcode.config.d
git clone https://github.com/archiexdex/rcfiles.git ~/.archiexdex.config.d
mv ~/rcfiles ~/.rcfiles

# screenrc
ln -s ~/.rcfiles/.screenrc ~/.screenrc

# vimrc
ln -s ~/.rcfiles/vimrc ~/.vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "vimrc done.\n"

# oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
rm ~/.zshrc
ln -s ~/.rcfiles/.zshrc ~/.zshrc

# rmate
sudo wget -O /usr/local/bin/rmate https://raw.github.com/aurora/rmate/master/rmate
chmod a+x /usr/local/bin/rmate
# rmate example
# local client: ssh -R <port>:localhost:<port> user@example.com
# remote client: rmate -p <port> file
sudo chsh -s /bin/zsh
