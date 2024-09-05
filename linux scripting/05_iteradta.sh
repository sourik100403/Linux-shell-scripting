#!/bin/bash
FILE="/home/labex/project/linuxshells/mytext.txt"
for textdata in $(cat $FILE)
do
   echo "data is $textdata"
done