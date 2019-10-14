#! /bin/bash

#top增强版
install htop

#普通文件转换为大字
install figlet

#mysql补全
install mycli

#shell检测工具
install ShellCheck

#打印目录树
install tree

#高级版cat
install rust cargo
cargo install bat
mv ~/.cargo/config ~/.cargo/config.bk
cp -f ${mode_dir}/.config ~/.cargo/

#svn
# install subversion

