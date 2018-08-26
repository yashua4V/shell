#!/bin/bash
comx=(石头 剪刀 布)
com=$[RANDOM%3]
read -p "石头剪刀布 1：石头 2：剪刀 3布：" per
if [ -z $per ];then
exit 3
fi
case "$per" in
1)
 if [ $com -eq 0 ];then
echo "平局，计算机出了${comx[$com]}"
elif [ $com -eq 1 ];then
echo "你赢了，计算机出了${comx[$com]}"
elif [ $com -eq 2 ];then
echo "计算机赢了，计算机出了${comx[$com]}"
fi ;;
2)
 if [ $com -eq 0 ];then
echo "计算机赢了，计算机出了${comx[$com]}"
elif [ $com -eq 1 ];then
echo "平局，计算机出了${comx[$com]}"
elif [ $com -eq 2 ];then
echo "你赢了，计算机出了${comx[$com]}"
fi ;;
3)
 if [ $com -eq 0 ];then
echo "你赢了，计算机出了${comx[$com]}"
elif [ $com -eq 1 ];then
echo "计算机，计算机出了${comx[$com]}"
elif [ $com -eq 2 ];then
echo "平局，计算机出了${comx[$com]}"
fi ;;
*)
 echo 请输入1，2，3
;;
esac
