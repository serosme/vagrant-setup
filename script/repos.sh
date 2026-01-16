# 删除现有的 Yum 仓库配置
rm -rf /etc/yum.repos.d/*

# 使用阿里云镜像源配置 CentOS 7 Yum 仓库
curl -fsSL https://mirrors.aliyun.com/repo/Centos-7.repo -o /etc/yum.repos.d/CentOS-Base.repo
