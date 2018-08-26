#!/bin/bash
ipcs(){
ping -c2 -i0.1 -W1 192.168.4.$1 >/dev/null
if [ $? -eq 0 ] ;then
 echo " host $i is up "
else
 echo "host $i is down"
fi
}
i=1
while [ $i -le 254 ] 
do
ipcs $i &
let i++
sleep 0.01
done
