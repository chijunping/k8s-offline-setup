#!/bin/bash

# 导入镜像
. ./loadimage.sh

echo "${MASTER_IP}    ${APISERVER_NAME}" >> /etc/hosts

#这里的token和discovery-token-ca-cert-hash 尽量用master安装初始化时第一次产生的值，后续命令二次生成的，在实验过程中碰到过token无效的情况
kubeadm join ${APISERVER_NAME}:${APISERVER_PORT} \
   --token ${TOKEN} \
   --discovery-token-ca-cert-hash ${CERT}
