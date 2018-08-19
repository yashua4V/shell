#!/bin/bash
i=1
while :
do
x=$[RANDOM%8+30]
s=$s$i
echo -e "\033[40;${x}m$s\033[0m"
let i++
sleep 0.07
if [ $i -eq 10 ];then
while :
do
y=$[RANDOM%8+30]
b=${#s}
let b--
s=${s:0:$b}
echo -e "\033[40;${y}m$s\033[0m"
n=${#s}
[ $n -eq  1 ]&& i=2 && break
sleep 0.07
done
fi
done


