#! /usr/bin/bash

if [ $# -lt 2 ] 
then 
	echo error veuillez saisir  2 repertoire 
	exit 1
fi 

counter_rep1=$(ls $1 | wc -l)
counter_rep2=`ls $2 | wc -l`

echo la longeur de la  rep $1  est $counter_rep1 
echo la longeur de la  rep $2  est $counter_rep2

if [ $counter_rep1 -gt  $counter_rep2 ]
then 
	echo   $1 est la plus grand 
else
	echo $2 est la plus grand 
fi 



