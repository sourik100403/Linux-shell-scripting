#!/bin/bash
#if else
read -p "enter your markes" marks
if [[ $marks -ge 80 ]]
then
    echo "first division"
elif [[ $marks -ge 60 ]] && [[ $marks -le 80 ]]
then
    echo "second divion"
else
    echo "fail!!!!!!"
fi