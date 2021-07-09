#!/bin/bash

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
