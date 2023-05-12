#! /usr/bin/bash

if [ $# -eq 0 ]
then
	echo MyLs: missing file operand
	echo "Usage: $0 [FILE]"
	exit 1
fi


# main output
echo "Type                   Nom de Fichier"
echo "--------------------------------------"

for line in `ls $1`
do 
	# rest the type variable
	type=''
	if [ -e $line ]
	then
		type=ord
	elif [ -f $line ]
	then
		type=rep
	fi
	# output the result line
	echo "$type                    $line" 
done


# echo "Type          Nom de fichier"
# echo -----------------------------

# for line in `ls $1`
# do 
# 	if [ -d $line ]
# 	then
# 		echo "rep               $line"
# 	elif [ -f $line ]
# 	then
# 		echo "ord               $line"
# 	fi
# done