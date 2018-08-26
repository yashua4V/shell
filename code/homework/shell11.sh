#!/bin/bash
pass=$2
pass=${pass:-123456}
for i in `cat $1`
do 
   useradd $i
  echo "$pass"|passwd  --stdin $i
done 
