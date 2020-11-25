#!/bin/sh
cd $(dirname $0)
RC_DIR=${RC_DIR:-$PWD}
cd $HOME
git clone https://github.com/robbyrussell/oh-my-zsh .oh-my-zsh
ln -sf $RC_DIR/.gitconfig .
ln -sf $RC_DIR/tmux.conf .tmux.conf

cat <<EOT > .zshrc
RC_DIR=$RC_DIR
source \$RC_DIR/zshrc.sh
EOT
echo "zshrc done!\n"

# vimrc
ln -sf $RC_DIR/vimrc $HOME/.vim
git clone https://github.com/gmarik/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
echo "vimrc done!\n"
