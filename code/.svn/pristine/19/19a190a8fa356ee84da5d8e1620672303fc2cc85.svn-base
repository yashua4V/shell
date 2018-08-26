#!/bin/bash
a=`yum repolist | sed -n '/repolist/s/,//p' |awk '{print $2}'`
[ $a -gt 0 ] && echo yumkuok || echo yumerror
yum -y install gcc openssl-devel pcre-devel
tar -xf nginx-1.10.3.tar.gz
cd nginx-1.10.3
./configure --prefix=/usr/local/nginx --user=nginx --group=nginx --with-http_ssl_module --with-stream
make
make install
cp /root/sh/sh.dir/nginx.ctl /usr/sbin
