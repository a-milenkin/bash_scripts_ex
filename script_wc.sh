#!/bin/bash


while read line
do
        if [ -z "$(ls -A ~/$line/)" ]; then
                echo -1 >> ~/summary.info
        else
                (wc -w < ~/$line/readme.txt) >> ~/summary.info
        fi
done < list.info



