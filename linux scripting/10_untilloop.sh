#!/bin/bash
#until loop
a=10
while [[ $a -eq 1 ]]
do 
    echo "$a"
    let a--
    #or a=`expr $a -1`
done