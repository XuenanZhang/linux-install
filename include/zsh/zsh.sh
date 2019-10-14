#! /bin/bash

install zsh

# sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
download https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh install.sh

gitdown https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions
gitdown https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

cd ${mode_dir}
cp -f .zshrc ~
cp -f ys.zsh-theme ~/.oh-my-zsh/themes
