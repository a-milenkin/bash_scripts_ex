#!/bin/bash


for file in `ls *txt`
do
	  mv "$file" "text_file_${file}"
done
