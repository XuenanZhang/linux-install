#! /bin/bash

# install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel python-devel
log_info "安装python基础"
install python-devel python-pip

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

log_info "安装pip"
sudo pip3 install --upgrade pip
install python-pip
sudo pip install --upgrade pip

#python语法检测
log_info "安装flake8"
sudo pip install flake8
