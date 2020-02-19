#! /bin/bash

log_info "更新gcc gcc-++等"
install gcc gcc-c++ gdb

log_info "安装cmake autoconf等"
install make cmake autoconf automake clang

intsall git

#软件扩展包
# install epel-release

#文件基础颜色
log_info "配置文件颜色"
cd ${cache_dir}
gitdown "seebi/dircolors-solarized"
mv dircolors-solarized/dircolors.256dark ~/.mycolors

# cat >> ~/.bashrc << EOF

# alias ls='ls --color=auto'
# if [ -e /usr/share/terminfo/x/xterm-256color ]; then     
# export TERM='xterm-256color'
# else
# export TERM-'xterm-color'
# fi

# eval \`dircolors ~/.mycolors\`
# PS1='[\[\e[32m\]\A#\##\[\e[31m\]\u\[\e[35m\]@\h \W\[\e[m\]]\[\e[33m\]#\[\e[m\] '

# ulimit -c unlimited

# EOF']]]'


