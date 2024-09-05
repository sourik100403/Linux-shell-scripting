#!/bin/bash
#project____________________1 monitoring free ram sapce
#check how much ram free  free -h (h for human readable)
free -h
#-mt means total i  megabytes       filter total row
free -mt | grep "total"
#total : 3783   2905    737
#now filter 737
free -mt | grep "total" | awk '{print $4}'

FREESPACE=$(( free -mt | grep "total" | awk '{print $4}' ))
TH=500
if [[ $FREESPACE -lt $TH ]]
then 
    echo "WARNING RAM SPACE LOW !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
else
    echo "ram space sufficient - $FREESPACE M"
fi