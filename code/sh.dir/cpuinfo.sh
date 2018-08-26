#!/bin/bash
cat /proc/cpuinfo | grep "vendor_id"| grep "GenuineIntel">/dev/null
if [ $? -eq 0 ] ;then
echo 'cpu是Intel公司产品'
else
echo 'cpu是AMD公司产品'
fi
