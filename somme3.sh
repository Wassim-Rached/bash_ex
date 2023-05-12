#! /usr/bin/bash

sum=0

# for i in $*
# do
# 	sum=$(($sum+$i)) 
# done

# echo sum est : $sum

echo enter n:
read n

i=0

while [ $i -lt $n ]
do
	echo enter value: 
	read k
	sum=$(($sum+$k))
	i=$(($i+1))
done

echo sum est : $sum
