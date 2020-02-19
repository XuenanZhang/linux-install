#!/bin/bash
# /**********************************************************
#  Author        : ZhangXueNan
#  Email         : 176108053@qq.com
#  GitHub        : https://github.com/XuenanZhang

#  Create time   : 2018-08-20 12:00
#  Filename      : install.sh

#  Description   : install software and configuration file on Linux 
#                : support mode ('base' 'python' 'vim' 'tmux' 'zsh' 'tools')
#  *******************************************************/

export root_dir=$(pwd)
export mode_dir=${root_dir}/include
export cache_dir=${root_dir}/tmp_cache

#需要安装功能列表
install_list=('base' 'python' 'vim' 'tmux' 'zsh' 'tools')

load_mode()
{
    local mode=${1}
    mode_dir=${root_dir}/include/${mode}
    local file_name=${mode_dir}/${mode}.sh
    if [ -s ${file_name} ];then
        log_title "start install ${mode} ..."
        source ${file_name}
    else
        log_fatal "${file_name} 文件不存在!"        
    fi
}

run()
{
    for mode in "$@"; do
        load_mode ${mode}
    done
}

title_info()
{
    clear
    echo -e "${BYellow}"
    echo "+-------------------------------------------------------------------------+"
    echo "| Install software and configuration file on Linux                        |"
    echo "| Support mode ('base' 'python' 'vim' 'tmux' 'zsh' 'tools')               |"
    echo "| Author : ZhangXueNan                                                    |"
    echo "| GitHub : https://github.com/XuenanZhang                                 |"
    echo "+-------------------------------------------------------------------------+"
    echo 
}

# main入口
main()
{
    # 打印信息
    title_info
    display_os_info

    # 检测 目前只支持centos
    if [ ${os} != ${OS_CentOS} ]; then
        log_fatal "os(${os}) no support!!"
    fi

    # 倒计时
    {
        for ((i=3;i>=1;i--));do
        printf "${HRed} Ready --> ${i} \r"
            sleep 1
        done
        printf "${BGreen}Go Go Go Go !!! \n"
        sleep 1s
    }
    
    if [ ! -d ${cache_dir} ]; then
        mkdir -p ${cache_dir}
    fi
        
    if (( $# > 0 ));then
        run "$@"
    else
        run "${install_list[@]}"
    fi
}

# 加载基础文件
. ${root_dir}/common/define.sh
. ${root_dir}/common/common.sh


main "$@" 2>&1 | tee ${root_dir}/info.log




