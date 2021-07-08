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

- [离线安装Kubernetes v1.17.1 - 准备离线资源包](https://www.jianshu.com/p/93e7cb4da070)
- [离线安装Kubernetes v1.17.1 - 离线部署](https://www.jianshu.com/p/fd9f1076ea2d)
