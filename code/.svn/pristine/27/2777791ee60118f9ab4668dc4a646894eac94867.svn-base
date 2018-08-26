#!/bin/bash
ifconfig  p8p1 |grep "inet" >/dev/null
if [ -f "/etc/sysconfig/network-scripts/ifcfg-p8p1" ] && [ $? -eq 0 ];then
systemctl restart network.service
else
 echo 'error 没有网卡或未配置IP'
fi

