#!/usr/bin/expect
set timeout 200
spawn ssh -o StrictHostKeyChecking=no server0
expect "root@server0" {send "rm -rf /etc/yum.repos.d/*.repo\n"}
expect "root@server0" {send "echo \[yashua\] >>/etc/yum.repos.d/yashua.repo\n"}
expect "root@server0" {send "echo name=yashua >>/etc/yum.repos.d/yashua.repo\n"}
expect "root@server0" {send "echo baseurl=http://content.example.com/rhel7.0/x86_64/dvd >>/etc/yum.repos.d/yashua.repo\n"}
expect "root@server0" {send "echo enable=1 >>/etc/yum.repos.d/yashua.repo\n"}
expect "root@server0" {send "echo gpgcheck=0 >>/etc/yum.repos.d/yashua.repo\n"}
expect "root@server0" {send "fdisk /dev/vdb\n"}
expect "：" {send "n\n"}
expect ":" {send "\n"}
expect "：" {send "\n"}
expect "：" {send "\n"}
expect "：" {send "+200M\n"}
expect "：" {send "n\n"}
expect ":" {send "\n"}
expect "：" {send "\n"}
expect "：" {send "\n"}
expect "：" {send "+2000M\n"}
expect "：" {send "n\n"}
expect ":" {send "\n"}
expect "：" {send "\n"}
expect "：" {send "\n"}
expect "：" {send "+1000M\n"}
expect "：" {send "t\n"}
expect "：" {send "1\n"}
expect "：" {send "8e\n"}
expect "：" {send "n\n"}
expect ":" {send "\n"}
expect "：" {send "\n"}
expect "：" {send "\n"}
expect "：" {send "n\n"}
expect "：" {send "\n"}
expect "：" {send "+300M\n"}
expect "：" {send "n\n"}
expect "：" {send "\n"}
expect "：" {send "+512M\n"}
expect "：" {send "n\n"}
expect "：" {send "\n"}
expect "：" {send "\n"}
expect "：" {send "w\n"}
expect "root@server0" {send "partprobe /dev/vdb\n"}
expect "root@server0" {send "vgcreate systemvg /dev/vdb1\n"}
expect "root@server0" {send "lvcreate -n vo -L 196M systemvg\n"}
expect "root@server0" {send "mkdir /vo/\n"}
expect "root@server0" {send "mkfs.ext3 /dev/systemvg/vo\n"}
expect "root@server0" {send "mount /dev/systemvg/vo /vo/\n"}
expect "root@server0" {send "df -h /vo/\n"}
expect "root@server0" {send "vgextend systemvg /dev/vdb5\n"}
expect "root@server0" {send "lvextend -L 300M /dev/systemvg/vo\n"}
expect "root@server0" {send "resize2fs /dev/systemvg/vo\n"}
expect "root@server0" {send "groupadd adminuser\n"}
expect "root@server0" {send "useradd -G adminuser natasha\n"}
expect "root@server0" {send "useradd -G adminuser harry\n"}
expect "root@server0" {send "useradd -s /sbin/nologin sarah\n"}
expect "root@server0" {send "echo flectrag |passwd --stdin natasha\n"}
expect "root@server0" {send "echo flectrag |passwd --stdin harry\n"}
expect "root@server0" {send "echo flectrag |passwd --stdin sarah\n"}
expect "root@server0" {send "cp -p /etc/fstab /var/tmp/fstab\n"}
expect "root@server0" {send "setfacl -m u:natasha:rw- /var/tmp/fstab\n"}
expect "root@server0" {send "setfacl -m u:harry:--- /var/tmp/fstab\n"}
expect "root@server0" {send "echo '23 14 * * * /bin/echo hiya'>> /var/spool/cron/natasha\n"}
expect "root@server0" {send "crontab -l -u natasha\n"}
expect "root@server0" {send "mkdir /home/admins\n"}
expect "root@server0" {send "chown :adminuser /home/admins\n"}
expect "root@server0" {send "chmod 2770 /home/admins\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
expect "root@server0" {send "\n"}
interact
