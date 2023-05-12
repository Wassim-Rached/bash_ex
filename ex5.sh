#! /usr/bin/bash

if [ $# -lt 1 ]
then
	echo "ERROR veuillez saisir  un rep " 
	exit 1
fi

rep_counter=0
ord_counter=0

for line in `ls $1`
do 
	if [ -d $line ] 
	then
		rep_counter=$(($rep_counter+1))
	elif [ -f $line ]
	then
		ord_counter=$(($ord_counter+1))
	fi
done 

echo rep_counter:$rep_counter
echo ord_counter:$ord_counter