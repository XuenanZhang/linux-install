#!/bin/bash

# terminal color template {{{
    Color_off='\033[0m'       # Text Reset
    # Regular Colors
    Black='\033[0;30m'        # Black
    Red='\033[0;31m'          # Red
    Green='\033[0;32m'        # Green
    Yellow='\033[0;33m'       # Yellow
    Blue='\033[0;34m'         # Blue
    Purple='\033[0;35m'       # Purple
    Cyan='\033[0;36m'         # Cyan
    White='\033[0;37m'        # White

    # Bold
    BBlack='\033[1;30m'       # Black
    BRed='\033[1;31m'         # Red
    BGreen='\033[1;32m'       # Green
    BYellow='\033[1;33m'      # Yellow
    BBlue='\033[1;34m'        # Blue
    BPurple='\033[1;35m'      # Purple
    BCyan='\033[1;36m'        # Cyan
    BWhite='\033[1;37m'       # White

    # Underline
    UBlack='\033[4;30m'       # Black
    URed='\033[4;31m'         # Red
    UGreen='\033[4;32m'       # Green
    UYellow='\033[4;33m'      # Yellow
    UBlue='\033[4;34m'        # Blue
    UPurple='\033[4;35m'      # Purple
    UCyan='\033[4;36m'        # Cyan
    UWhite='\033[4;37m'       # White

    # Background
    On_Black='\033[40m'       # Black
    On_Red='\033[41m'         # Red
    On_Green='\033[42m'       # Green
    On_Yellow='\033[43m'      # Yellow
    On_Blue='\033[44m'        # Blue
    On_Purple='\033[45m'      # Purple
    On_Cyan='\033[46m'        # Cyan
    On_White='\033[47m'       # White

    # High Intensity
    HBlack='\033[0;90m'       # Black
    HRed='\033[0;91m'         # Red
    HGreen='\033[0;92m'       # Green
    HYellow='\033[0;93m'      # Yellow
    HBlue='\033[0;94m'        # Blue
    HPurple='\033[0;95m'      # Purple
    HCyan='\033[0;96m'        # Cyan
    HWhite='\033[0;97m'       # White

    # Bold High Intensity
    BHBlack='\033[1;90m'      # Black
    BHRed='\033[1;91m'        # Red
    BHGreen='\033[1;92m'      # Green
    BHYellow='\033[1;93m'     # Yellow
    BHBlue='\033[1;94m'       # Blue
    BHPurple='\033[1;95m'     # Purple
    BHCyan='\033[1;96m'       # Cyan
    BHWhite='\033[1;97m'      # White

    # High Intensity backgrounds
    On_HBlack='\033[0;100m'   # Black
    On_HRed='\033[0;101m'     # Red
    On_HGreen='\033[0;102m'   # Green
    On_HYellow='\033[0;103m'  # Yellow
    On_HBlue='\033[0;104m'    # Blue
    On_HPurple='\033[0;105m'  # Purple
    On_HCyan='\033[0;106m'    # Cyan
    On_HWhite='\033[0;107m'   # White
# }}}

# {{{ printfColor
printfColor() 
{ 
	printf "${BBlack}======> %s${Color_off}\n" "$1" 
	printf "${BBlue}======> %s${Color_off}\n" "$1" 
	printf "${BRed}======> %s${Color_off}\n" "$1" 
	printf "${BGreen}======> %s${Color_off}\n" "$1" 
	printf "${BYellow}======> %s${Color_off}\n" "$1" 
	printf "${BPurple}======> %s${Color_off}\n" "$1" 
	printf "${BCyan}======> %s${Color_off}\n" "$1" 
	printf "${BWhite}======> %s${Color_off}\n" "$1" 

	printf "${Black}======> %s${Color_off}\n" "$1" 
	printf "${Blue}======> %s${Color_off}\n" "$1" 
	printf "${Red}======> %s${Color_off}\n" "$1" 
	printf "${Green}======> %s${Color_off}\n" "$1" 
	printf "${Yellow}======> %s${Color_off}\n" "$1" 
	printf "${Purple}======> %s${Color_off}\n" "$1" 
	printf "${Cyan}======> %s${Color_off}\n" "$1" 
	printf "${White}======> %s${Color_off}\n" "$1" 

	printf "${UBlack}======> %s${Color_off}\n" "$1" 
	printf "${UBlue}======> %s${Color_off}\n" "$1" 
	printf "${URed}======> %s${Color_off}\n" "$1" 
	printf "${UGreen}======> %s${Color_off}\n" "$1" 
	printf "${UYellow}======> %s${Color_off}\n" "$1" 
	printf "${UPurple}======> %s${Color_off}\n" "$1" 
	printf "${UCyan}======> %s${Color_off}\n" "$1" 
	printf "${UWhite}======> %s${Color_off}\n" "$1" 

	printf "${On_Black}======> %s${Color_off}\n" "$1" 
	printf "${On_Blue}======> %s${Color_off}\n" "$1" 
	printf "${On_Red}======> %s${Color_off}\n" "$1" 
	printf "${On_Green}======> %s${Color_off}\n" "$1" 
	printf "${On_Yellow}======> %s${Color_off}\n" "$1" 
	printf "${On_Purple}======> %s${Color_off}\n" "$1" 
	printf "${On_Cyan}======> %s${Color_off}\n" "$1" 
	printf "${On_White}======> %s${Color_off}\n" "$1" 

	printf "${HBlack}======> %s${Color_off}\n" "$1" 
	printf "${HBlue}======> %s${Color_off}\n" "$1" 
	printf "${HRed}======> %s${Color_off}\n" "$1" 
	printf "${HGreen}======> %s${Color_off}\n" "$1" 
	printf "${HYellow}======> %s${Color_off}\n" "$1" 
	printf "${HPurple}======> %s${Color_off}\n" "$1" 
	printf "${HCyan}======> %s${Color_off}\n" "$1" 
	printf "${HWhite}======> %s${Color_off}\n" "$1" 

	printf "${BHBlack}======> %s${Color_off}\n" "$1" 
	printf "${BHBlue}======> %s${Color_off}\n" "$1" 
	printf "${BHRed}======> %s${Color_off}\n" "$1" 
	printf "${BHGreen}======> %s${Color_off}\n" "$1" 
	printf "${BHYellow}======> %s${Color_off}\n" "$1" 
	printf "${BHPurple}======> %s${Color_off}\n" "$1" 
	printf "${BHCyan}======> %s${Color_off}\n" "$1" 
	printf "${BHWhite}======> %s${Color_off}\n" "$1" 

	printf "${On_HBlack}======> %s${Color_off}\n" "$1" 
	printf "${On_HBlue}======> %s${Color_off}\n" "$1" 
	printf "${On_HRed}======> %s${Color_off}\n" "$1" 
	printf "${On_HGreen}======> %s${Color_off}\n" "$1" 
	printf "${On_HYellow}======> %s${Color_off}\n" "$1" 
	printf "${On_HPurple}======> %s${Color_off}\n" "$1" 
	printf "${On_HCyan}======> %s${Color_off}\n" "$1" 
	printf "${On_HWhite}======> %s${Color_off}\n" "$1" 
}
#}}}

# printfColor "Color"

# 打印日志
log_title() 
{ 
    local today=$(date '+%Y-%m-%d %H:%M:%S')
    echo -e "${Yellow}[${today}] ${BBlue}${1} ${Color_off}" 
}
log_info() 
{ 
    local today=$(date '+%Y-%m-%d %H:%M:%S')
    echo -e "${Yellow}[${today}] ${HGreen}${1}${Color_off}" 
}
log_error() 
{ 
    local today=$(date '+%Y-%m-%d %H:%M:%S')
    echo -e "${Yellow}[${today}] ${Red}${1}${Color_off}" 
}
log_fatal() 
{ 
    local today=$(date '+%Y-%m-%d %H:%M:%S')
    echo -e "${Yellow}[${today}] ${On_HRed}${1}${Color_off}" 
    exit 1
}

# wget下载文件
download()
{
    cd ${cache_dir}
    # wget $1 2>&1
    wget $1
}

# git下载文件
gitdown()
{
    cd ${cache_dir}
    if (( $# == 1 ));then
        git clone "https://github.com/${1}" --depth=1
    elif (( $# == 2 ));then
        git clone "https://github.com/${1}" "${2}" --depth=1
    fi
}

#安装程序(yum apt)
install()
{
    for item in "$@"; do
        sudo yum -y install ${item}
    done
}

# 创建文件夹(如果存在不创建)
create_dir()
{
    if [ ! -d $1 ]; then
        if (( $# == 1 ));then
            mkdir $1
        elif (( $# == 2 ));then
            mkdir $2 $1
        else
            log_error "create_dir param num=$#";
        fi
    fi
}

# 检测操作系统
check_os(){
    if [ $# -eq 0 ];then
        return $False
    fi

    if [ ${os} == ${OS_Unknown} ]; then
        if [[ -f /etc/redhat-release ]]; then
            os=${OS_CentOS}
        elif grep -Eqi "debian" /etc/issue; then
            os=${OS_Debian}
        elif grep -Eqi "ubuntu" /etc/issue; then
            os=${OS_Ubuntu}
        elif grep -Eqi "centos|red hat|redhat" /etc/issue; then
            os=${OS_CentOS}
        elif grep -Eqi "debian" /proc/version; then
            os=${OS_Debian}
        elif grep -Eqi "ubuntu" /proc/version; then
            os=${OS_Ubuntu}
        elif grep -Eqi "centos|red hat|redhat" /proc/version; then
            os=${OS_CentOS}
        else
            os=${OS_Unknown}
        fi
    fi

    if [[ $1 == ${os} ]]; then
        return $True
    else
        return $False
    fi
}
check_os 1

# 检测安装包(yum apt)
check_os_package(){
    if [ $# -eq 0 ];then
        return $False
    fi

    if [ ${os_package} == ${Package_Unknown} ]; then
        if [[ -f /etc/redhat-release ]]; then
            os_package=${Package_Yum}
        elif grep -Eqi "debian" /etc/issue; then
            os_package=${Package_Apt}
        elif grep -Eqi "ubuntu" /etc/issue; then
            os_package=${Package_Apt}
        elif grep -Eqi "centos|red hat|redhat" /etc/issue; then
            os_package=${Package_Yum}
        elif grep -Eqi "debian" /proc/version; then
            os_package=${Package_Apt}
        elif grep -Eqi "ubuntu" /proc/version; then
            os_package=${Package_Apt}
        elif grep -Eqi "centos|red hat|redhat" /proc/version; then
            os_package=${Package_yum}
        else
            os_package=${Package_Unknown}
        fi
    fi
    
    if [[ $1 == ${os_package} ]]; then
        return $True
    else
        return $False
    fi
}
check_os_package 1

get_ip(){
    local ipv4=$( ip addr | egrep -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | \
    egrep -v "^192\.168|^172\.1[6-9]\.|^172\.2[0-9]\.|^172\.3[0-2]\.|^10\.|^127\.|^255\.|^0\." | head -n 1 )
    [ -z "${ipv4}" ] && ipv4=$( wget -qO- -t1 -T2 ipv4.icanhazip.com )
    [ -z "${ipv4}" ] && ipv4=$( wget -qO- -t1 -T2 ipinfo.io/ip )
    printf -- "%s" "${ipv4}"
}

get_ip_country(){
    local country=$( wget -qO- -t1 -T2 ipinfo.io/$(get_ip)/country )
    printf -- "%s" "${country}"
}

get_libc_version(){
    getconf -a | grep GNU_LIBC_VERSION | awk '{print $NF}'
}

get_opsy(){
    [ -f /etc/redhat-release ] && awk '{print ($1,$3~/^[0-9]/?$3:$4)}' /etc/redhat-release && return
    [ -f /etc/os-release ] && awk -F'[= "]' '/PRETTY_NAME/{print $3,$4,$5}' /etc/os-release && return
    [ -f /etc/lsb-release ] && awk -F'[="]+' '/DESCRIPTION/{print $2}' /etc/lsb-release && return
}

display_os_info(){
    local cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo | sed 's/^[ \t]*//;s/[ \t]*$//' )
    local cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
    local freq=$( awk -F: '/cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo | sed 's/^[ \t]*//;s/[ \t]*$//' )
    local tram=$( free -m | awk '/Mem/ {print $2}' )
    local swap=$( free -m | awk '/Swap/ {print $2}' )
    local up=$( awk '{a=$1/86400;b=($1%86400)/3600;c=($1%3600)/60;d=$1%60} {printf("%ddays, %d:%d:%d\n",a,b,c,d)}' /proc/uptime )
    local load=$( w | head -1 | awk -F'load average:' '{print $2}' | sed 's/^[ \t]*//;s/[ \t]*$//' )
    local opsy=$( get_opsy )
    local arch=$( uname -m )
    local lbit=$( getconf LONG_BIT )
    local host=$( hostname )
    local kern=$( uname -r )
    local ramsum=$( expr $tram + $swap )
    
    echo -e "${HCyan}--------------------------- System Information ----------------------------"
    echo -e "${HGreen}OS                   : ${Color_off}${opsy}"
    echo -e "${HGreen}Arch                 : ${Color_off}${arch} (${lbit} Bit)"
    echo -e "${HGreen}Kernel               : ${Color_off}${kern}"
    echo -e "${HGreen}CPU model            : ${Color_off}${cname}"
    echo -e "${HGreen}Number of cores      : ${Color_off}${cores}"
    echo -e "${HGreen}CPU frequency        : ${Color_off}${freq} MHz"
    echo -e "${HGreen}Total amount of ram  : ${Color_off}${tram} MB"
    echo -e "${HGreen}Total amount of swap : ${Color_off}${swap} MB"
    # echo -e "${HGreen}System uptime        : ${Color_off}${up}"
    # echo -e "${HGreen}Load average         : ${Color_off}${load}"
    echo -e "${HGreen}Hostname             : ${Color_off}${host}"
    # echo -e "${HGreen}IPv4 address         : $(get_ip)"
    # echo -e "${HGreen}IPv4 country         : $(get_ip_country)"
    echo -e "${HCyan}---------------------------------------------------------------------------"
    echo
}


