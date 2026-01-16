# 使用阿里云镜像源配置 Docker 仓库
curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo -o /etc/yum.repos.d/docker-ce.repo

# 安装 Docker CE
yum install -y docker-ce

# 配置 Docker cgroup 驱动为 systemd
echo '{"exec-opts":["native.cgroupdriver=systemd"]}' | tee /etc/docker/daemon.json

# 设置 Docker 服务开机启动
systemctl enable --now docker.service
