#!/bin/bash
num=$[RANDOM%100+1]
i=1
while :
do
read -p '1 ~ 100 猜一个数 :' p
 if [ -z $p ]; then
echo '请输入数字'
elif [ $p -gt $num ];
then 
echo '猜大了'
elif [ $p -lt $num ];then
echo '猜小了'



elif [ $p -eq $num ] ;then
echo '猜对了'
echo "一共猜了 $i 次"
while :
do
read -p '还要继续玩吗(yes | no)' t
if [ "$t" == yes ];then 
     num=$[RANDOM%100+1]
     i=1
break
elif [ "$t" == no ];then
exit
else
echo "(yes | no)"
fi
done



fi
let i++
done
