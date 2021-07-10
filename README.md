# 何为离线安装Kubernetes

在很多企业内网中没有互联网链接，要部署Kubernetes非常的不方便，这里我制作了Kubernetes离线资源包，配套制作和安装教程，可以非常方便的在内网中部署Kubernetes群集。

## 如何制作离线资源包

请看教程：

下载yum包和docker image，分别放到`packages`和`images`两个目录中再与本仓库合并。制作完的目录结构应该如下：

```text
🗜️k8sOfflineSetup.tar.gz
├── 📁gpg
├── 📁plugins
├── 📁repos
├── 📁scripts
├── 📁packages
├── 📁images
├── 📃setup_master.sh
└── 📃setup_worker.sh
```

## 如何使用离线资源包
## 注意：准备离线包的机器一定要是minimal系统，否则离线包下载一定是不完整的！！！
## 注意：务必修改 calico.yaml 中image后的镜像版本
## 注意：当有pod一直处于pendding时，不要着急，等有node可用于schedule（调度）后，就会调度到node节点上，如果还不行则参考查看下是不是节点有污点，如果有则去除污点即可
#  参考：https://blog.csdn.net/a772304419/article/details/111549920
#  [root@localhost k8sOfflineSetup]# kubectl describe node k8s-master | grep Taint
#  [root@localhost k8sOfflineSetup]# kubectl taint nodes k8s-master node-role.kubernetes.io/master:NoSchedule-
#  [root@localhost k8sOfflineSetup]# kubectl describe node k8s-master | grep Taint
#


- [离线安装Kubernetes v1.17.1 - 准备离线资源包](https://www.jianshu.com/p/93e7cb4da070)
- [离线安装Kubernetes v1.17.1 - 离线部署](https://www.jianshu.com/p/fd9f1076ea2d)
