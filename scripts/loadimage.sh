#!/bin/bash

# 导入镜像
# kubernetes
docker load -i ../images/kube-controller-manager*
docker load -i ../images/kube-apiserver*
docker load -i ../images/kube-scheduler*
docker load -i ../images/kube-proxy*
docker load -i ../images/coredns*
docker load -i ../images/etcd*
docker load -i ../images/pause*

#calico 网络插件
docker load -i ../images/calico-cni*
docker load -i ../images/calico-pod2daemon-flexvol*
docker load -i ../images/calico-node*
docker load -i ../images/calico-kube-controllers*

# nginx ingress controller
docker load -i ../images/nginx-ingress-controller*

# kubernetes dashboard
docker load -i ../images/kubernetesui-dashboard*
docker load -i ../images/kubernetesui-metrics-scraper*

# kuboard
docker load -i ../images/kuboard-latest*
docker load -i ../images/kuboard-metrics-server-amd64*
