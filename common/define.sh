#!/bin/bash

True=0
False=1

# 系统枚举
OS_Unknown="unknown"
OS_CentOS="centos"
OS_Ubuntu="ubuntu"
OS_Debian="debian"

# 工具包枚举
Package_Unknown="unknown"
Package_Yum="yum"
Package_Apt="apt"

# 当前系统
os=${OS_Unknown}
# 当前版本
os_ver="0"
# 当前工具包
os_package=${Package_Unknown}
