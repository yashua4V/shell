#!/bin/bash
x=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
mima(){
for i in {1..8}
do
num=$[RANDOM%62]
pass=${x:$num:1}
password=$password$pass
done
echo $password
password= 
}
while :
do
mima
sleep 0.1
done
