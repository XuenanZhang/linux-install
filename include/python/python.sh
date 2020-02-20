#! /bin/bash

# install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel python-devel
log_info "安装python基础"
install python-devel zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel libffi-devel gdbm-devel db4-devel libpcap-devel xz-devel 

#安装python3
log_info "安装python3.7"
download https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz
tar -xvJf  Python-3.7.0.tar.xz
cd Python-3.7.0
./configure --prefix=/usr/local/python3
sudo make
sudo make install
sudo ln -s /usr/local/python3/bin/python3 /usr/bin/python3
sudo ln -s /usr/local/python3/bin/pip3 /usr/bin/pip3

log_info "更新pip3"
sudo pip3 install --upgrade pip

log_info "安装pip2"
install epel-release python-pip
sudo pip install --upgrade pip

#python语法检测
log_info "安装flake8"
sudo pip install flake8
