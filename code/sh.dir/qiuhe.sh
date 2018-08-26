#!/bin/bash
y=$1
y=${y:-1}
num=0
for i in `seq $y`
do
 num=$[num+$i]
#num=`echo $num+$i|bc`
done
echo "1到$y的和是：$num"
