#!/bin/bash
myping(){
  ping -c2 -i0.2 -W1 176.204.15.$1 >/dev/null
if [ $? -eq 0 ];then
echo "host $1 is up" 
else
echo "host $1 is down"
fi
sleep 0.01
}
for i in {1..254}
do
  myping $i &
done
for i in {1..254}
do
wait %$i
done
echo ok

