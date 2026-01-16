# 设置时区
sudo timedatectl set-timezone Asia/Shanghai

# 启用密码认证
sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config

# 禁用 swap
sed -i '/swap/d' /etc/fstab

# 禁用 SELinux
sed -i 's/^SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config
