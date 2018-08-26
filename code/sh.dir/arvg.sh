#!/bin/bash
read -p "是否要创建文件夹/${1}(yes|no)" hanji
if [ -d "/$1" ] ;then
echo "文件已存在"
exit
fi
if [ $hanji == "yes" ] || [ $hanji == "YES" ] ||[ $hanji == "Y" ] ||[ $hanji == "y" ] ;then
 mkdir /$1
read -p "是否在${1}文件夹下创建文件test01(yes|no):" hanji2 
 if [ $hanji2 == "yes" ] || [ $hanji2 == "YES" ] ||[ $hanji2 == "Y" ] ||[ $hanji == "y" ] ;then
 touch /$1/test01
fi
fi
