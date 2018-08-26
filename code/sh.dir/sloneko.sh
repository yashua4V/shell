#!/usr/bin/expect
set timeout 200
spawn scp /root/zhuom/tool/tools.tar.gz 172.25.0.11:/root
spawn scp /root/yashua 172.25.0.11:/usr/bin/
spawn ssh -X -o StrictHostKeyChecking=no server0 
expect "root@server0" {send "tar -xf tools.tar.gz \n"}
expect "root@server0" {send "yum -y install /root/tools/other/*\n"}
expect "root@server0" {send "scp 172.25.0.250:/root/yashua /usr/bin/\n"}
expect "root@server0" {send "\n"}
interact
