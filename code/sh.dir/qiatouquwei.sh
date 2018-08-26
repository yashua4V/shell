#!/bin/bash
#read -p '新的后缀名是什么：' x
#read -p '旧的和缀是什么' y
for i in `ls *$1`
do
mv $i ${i%.$1}.$2
done
