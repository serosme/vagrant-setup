# 创建挂载点 /data
mkdir /data

# 在 /dev/sdb 设备上创建 XFS 文件系统
mkfs.xfs /dev/sdb

# 将挂载配置添加到 /etc/fstab，使系统在启动时自动挂载 /dev/sdb 到 /data
echo "/dev/sdb /data xfs defaults 0 0" >> /etc/fstab
