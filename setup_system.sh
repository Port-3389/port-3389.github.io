#!/bin/bash

# 配置 YUM 源
echo "配置 YUM 源..."
cat > /etc/yum.repos.d/base.repo <<EOF
[base]
name=CentOS-\$releasever - Base
baseurl=http://mirrors.aliyun.com/centos/\$releasever/os/\$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

[updates]
name=CentOS-\$releasever - Updates
baseurl=http://mirrors.aliyun.com/centos/\$releasever/updates/\$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

[extras]
name=CentOS-\$releasever - Extras
baseurl=http://mirrors.aliyun.com/centos/\$releasever/extras/\$basearch/
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7

[epel]
name=Extra Packages for Enterprise Linux 7 - \$basearch
baseurl=http://mirrors.aliyun.com/epel/7/\$basearch
failovermethod=priority
enabled=1
gpgcheck=0
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
EOF

# 清理并重建 YUM 缓存
echo "清理并重建 YUM 缓存..."
yum clean all
yum makecache

# 安装常用软件
echo "开始安装软件包..."
yum install -y samba samba-client vsftpd vim-enhanced ftp
echo "所有操作已完成！"
echo " "
echo "————————————————————————————————————————————————————————————————————————"
# 3. 可选：输出完成信息
echo "系统初始化及软件安装完成！"
echo "欢迎您再次使用Port-3389_YXM的脚本工具！"
echo "该工具是centOS7补丁包！用于CCU的Linux实验！"
echo "长春大学，奋斗中的3389！联系方式QQ：1454669418@qq.com"
echo "期待与你的技术进步！"
echo "————————————————————————————————————————————————————————————————————————"
echo " "
