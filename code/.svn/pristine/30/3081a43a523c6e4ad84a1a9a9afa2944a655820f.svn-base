#!/bin/bash
while :
do 
  echo '本地网卡 eth0 流量信息如下：'
  ifconfig p8p1 | grep "RX pack" | awk '{print $5}'
  ifconfig p8p1 | grep "TX pack" | awk '{print $5}'
  sleep 1
done
    
