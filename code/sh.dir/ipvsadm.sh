#!/bin/bash
RIP1=192.168.4.10
RIP2=192.168.4.20
VIP=192.168.4.5:80
while :
do
    for IP in $RIP1 $RIP2
    do
        curl http://$IP &>/dev/null
        CON_STAT=$?
        ipvsadm -ln | grep $IP &>/dev/null
        SERVER_IN_LVS=$?
        if [ $CON_STAT -ne 0 -a $SERVER_IN_LVS -eq 0 ];then
        ipvsadm -d -t $VIP  -r $IP
        elif [  $CON_STAT -eq 0 -a $SERVER_IN_LVS -ne 0 ] ;then
        ipvsadm -a -t $VIP -r $IP
        fi
    done
    sleep 1
done &

