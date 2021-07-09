#!/bin/bash

#强制卸载
rpm -qa | grep libxml2 | xargs rpm -e --nodeps
rpm -qa | grep deltarpm| xargs rpm -e --nodeps
#安装
rpm -ivh ../packages/deltarpm*
rpm -ivh ../packages/libxml2*
rpm -ivh ../packages/python-deltarpm*
rpm -ivh ../packages/createrepo*

createrepo  /root/k8sOfflineSetup/packages

# 备份现有源
if [ -f "/etc/yum.repos.d/CentOS-Base.repo" ];then
    mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo_bak_$(date "+%Y-%m-%d_%H-%M-%S")
fi
cp -f ../repos/CentOS-Media.repo /etc/yum.repos.d/
