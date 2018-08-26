#!/bin/bash
num=$[ RANDOM%10 + 1 ]
while :
do
read  -p '你猜我猜不猜' cai
if [ $cai -eq $num ] ;then
echo '猜对了'
exit
elif [ $cai -gt $num ] ;then
echo '猜大了'
elif [ $cai -lt $num ] ;then
echo '猜小了'
fi
done
