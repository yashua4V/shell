#!/bin/bash
rpm -q bind
if [ $? -ne 0 ];then
yum -y install bind bind-chroot >/dev/null && echo 安装成功 ||echo 安装失败
fi
rm -rf /etc/named*.conf
echo 'options {
directory "/var/named";
};
zone "tedu.cn" {
type master;
file "tedu.cn.zone";
};' > /etc/named.conf 
echo '$TTL 1D                                
@   IN SOA  @ rname.invalid. (
                    0   ; serial
                    1D  ; refresh
                    1H  ; retry
                    1W  ; expire
                    3H )    ; minimum
@       NS  svr7.tedu.cn.                         
svr7    A   172.25.0.11                        
pc207   A   172.25.0.11               
www  A   172.25.0.11
* A 172.25.0.11' > /var/named/tedu.cn.zone
systemctl restart named && systemctl enable named && echo DNS服务搭建成功

