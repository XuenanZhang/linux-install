#! /bin/bash

log_info "安装zsh"
install zsh

log_info "安装oh_my_zsh"
# sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
download https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh
sh install.sh

log_info "安装zsh插件zsh-autosuggestions"
gitdown https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

log_info "安装zsh插件zsh-syntax-highlighting"
gitdown https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

cd ${mode_dir}
cp -f .zshrc ~
cp -f ys.zsh-theme ~/.oh-my-zsh/themes
