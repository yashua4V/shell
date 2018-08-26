#!/bin/bash
read -p 'username:' user
[ -z $user ] && echo '没有输入用户名' && exit 2
stty -echo
read -p 'password:' pass
stty echo
pass=${pass:-123456}
[ -z $pass ] && echo '没有输入密码' && exit 3
useradd $user
echo $pass |passwd --stdin $user

