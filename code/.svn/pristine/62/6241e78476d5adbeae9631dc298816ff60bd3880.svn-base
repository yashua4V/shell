#!/bin/bash
A=`awk -F: '/bash$/{print $1}' /etc/passwd`
for i in $A
do
grep "^$i" /etc/shadow | awk -F: '{print $1,$2}'
done

