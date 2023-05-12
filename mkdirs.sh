#!/usr/bin/bash

echo entre n et le nom :
read n nom

i=1

while [ $i -le $n ]
do
	echo "hal anta moutekedon $nom$i (Y/N)"
	read meteked 
	if [ $meteked = Y ]
	then
		mkdir $nom$i
	fi
	i=$(($i+1))
done