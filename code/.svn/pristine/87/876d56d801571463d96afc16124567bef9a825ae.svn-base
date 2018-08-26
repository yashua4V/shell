#!/bin/bash
expect << EOF
spawn ssh -o StrictHostKeyChecking=no $1
expect "password" {send "123456\n"} 
expect "web"    {send "rm -rf /etc/yum.repos.d/*.repo\n"}
expect "web"    {send "echo '\[yashua\]' >> /etc/yum.repos.d/yashua.repo\n"}
expect "web"    {send "echo 'name=yashua'>>/etc/yum.repos.d/yashua.repo\n"}
expect "web"    {send "echo 'baseurl=http://$2/dvd'>>/etc/yum.repos.d/yashua.repo\n"}
expect "web"    {send "echo 'enable=1'>>/etc/yum.repos.d/yashua.repo\n"}
expect "web"    {send "echo 'gpgcheck=0'>>/etc/yum.repos.d/yashua.repo\n"}
expect "web"    {send "yum repolist\n"}
expect "web"    {send "exit\n"}
EOF
