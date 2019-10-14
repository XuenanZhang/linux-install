#! /bin/bash

install ctags cscope

#:<<?
log_info "升级vim8.0"
install ncurses-devel
download https://github.com/vim/vim/archive/master.zip
unzip master.zip
cd vim-master
cd src/
./configure --with-features=huge -enable-pythoninterp --with-python-config-dir=/usr/lib64/python2.7/config --enable-python3interp --with-python3-config-dir=/usr/local/python3/lib/python3.7/config-3.7m-x86_64-linux-gnu/
sudo make
sudo make install
sudo mv /usr/bin/vim /usr/bin/vim_src
sudo cp /usr/local/bin/vim /usr/bin/
#?

#:<<?
log_info "vim中文文档"
download http://nchc.dl.sourceforge.net/sourceforge/vimcdoc/vimcdoc-2.1.0.tar.gz
tar -xzvf vimcdoc-2.1.0.tar.gz
cd vimcdoc-2.1.0/
./vimcdoc.sh -I
#?

#:<<?
log_info "安装powerline字体"
gitdown powerline/fonts
cd fonts
sudo ./install.sh
#?

#:<<?
log_info "安装ag"
install "pcre-devel xz-devel"
gitdown ggreer/the_silver_searcher
cd the_silver_searcher/
./build.sh && sudo make install
#?

:<<?
log_info "安装nerd-fonts字体"
gitdown ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh
?

:<<?
log_info "安装Bear"
gitdown rizsotto/Bear
cd Bear/
cmake ./
make all && sudo make install && make check && sudo make package
?

cd ${mode_dir}
cp -f .vimrc .vimrc.before .vimrc.plugin .agignore .ycm_extra_conf.py ~
cp -rf .vim ~

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#安装插件
vim -u ~/.vimrc.plugin +PlugInstall +PlugClean! +qall

