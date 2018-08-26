#!/bin/bash
read -p "ip: " ip1
read -p "vhname: " vhname
read -p "hostname: " hostname
expect << EOF
spawn virsh console $vhname                            
expect "]" { send "\n" }             
expect { 
 "login" { send "root\r"}
 ":" { send "root\r" }             
  }           

expect { 
"密码"   { send "123456\r" }
"#" { send "\n" }
}
expect "#"          { send "nmcli connection modify eth0 ipv4.method manual ipv4.addresses ${ip1}/24 connection.autoconnect yes \r" }
expect "#"          { send "nmcli connection up eth0\r" }
expect "#"          { send "hostnamectl set-hostname $hostname\r" }
expect "#"          { send "\r" }
expect "#"          { send "\r" }
expect "#"          { send "\r" }
expect "#"          { send "\r" }
EOF

#expect "#"          { send "nmcli connection add type ethernet con-name eth0 ifname eth0 \r" }
