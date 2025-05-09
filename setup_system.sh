#!/bin/bash

# 1. 执行远程脚本（原 curl | bash 部分）
curl -sSL https://cdog-shen.github.io/scriptGet/yum_based/gui_sys_init | bash

# 2. 安装所需软件包
yum install -y \
    samba \
    samba-client \
    vsftpd \
    vim-enhanced \
    ftp

# 3. 可选：输出完成信息
echo "系统初始化及软件安装完成！欢迎您再次使用Port-3389_YXM的脚本工具！"
