#!/bin/bash
game=(石头 剪刀 布)
num=$[$RANDOM%3]
computer=${game[$num]}
#通过随机数获取计算机的出拳
#出拳的可能性保存在一个数组中，game[0],game[1],game[2]分别是三种不同的可能
echo '请根据下列提示选择您的手势'
echo '1.石头'
echo '2.剪刀'
echo '3.布'


read -p "请选择1-3：" person
case $person in
1)
echo  "计算机出了$computer"
if [ $num -eq 0 ]; then
 echo '平局'
elif [ $num -eq 1 ] ; then
 echo '你赢了'
else 
 echo '计算机赢'
fi;;
2)
echo  "计算机出了$computer"
if [ $num -eq 0 ];then
 echo '计算机赢了'
elif [ $num -eq 1 ] ; then
 echo '平局'
else 
 echo '你赢了'
fi;;
3)
echo  "计算机出了$computer"
if [ $num -eq 0 ];then
 echo '你赢了'
elif [ $num -eq 1 ];then
 echo '计算机赢了'
else 
 echo '平局'
fi;;
*)
 echo '请输入 1-3 的数字'
esac
