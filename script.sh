#!/bin/bash

N=1
for file in `ls -S *.txt`
do
	out=$(( $N % 2 ))
	if [ $out -eq 1 ]
	then
		count=1
		while read line
		do
			if [ $(( $count % 3 )) -eq 1 ]
			then
				echo $line >> summary.info
			fi
			(( count++ ))
		done < $file 
	fi
	(( N++ ))
done
