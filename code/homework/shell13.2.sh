#!/bin/bash
set timeout 100
expect << EOF
spawn ssh -o StrictHostKeyChecking=no 192.168.2.100
expect "web"    {send "yum -y install httpd\n"}
expect "web"    {send "systemctl restart httpd\n"}
expect "web"    {send "exit\n"}
EOF

