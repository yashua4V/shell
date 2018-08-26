#!/bin/bash
read -p "请输入数字" num1
read -p "请输入数字" num2
read -p "请输入数字" num3
if [ -z ${num1} ] ||[ -z ${num2} ] ||[ -z ${num3} ] ;then
echo "必须输入三个数字"
exit 2
fi
tmp=0
x=`echo "$num1 > $num2" |bc`
if [ $x -eq 1 ];then
tmp=$num1
num1=$num2
num2=$tmp
fi
x=`echo "$num2 > $num3" |bc`
if [ $x -eq 1 ];then
tmp=$num2
num2=$num3
num3=$tmp
fi
x=`echo "$num1 > $num2" |bc`
if [ $x -eq 1 ];then
tmp=$num1
num1=$num2
num2=$tmp
fi
echo "从小到大的排序是$num1 $num2 $num3 "

