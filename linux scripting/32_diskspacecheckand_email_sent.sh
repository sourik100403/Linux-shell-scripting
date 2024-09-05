#!/bin/bash
#monitoring free disk space and alert sent to email
#df command use to check disk space
df 
#filter file
df -H | egrep -v "filename|filename1"
#serach 
df -H | egrep -v "filename|filename1" | grep "sda2" 
#print coloum 5
df -H | egrep -v "filename|filename1" | grep "sda2" | awk '{print $5}' | tr -d %

#code 
FU=$(( df -H | egrep -v "filename|filename1" | grep "sda2" | awk '{print $5}' | tr -d % ))
TH=80
TO="sourikparui54@gmail.com"
if [[ $FU -ge $TH ]]
then
    echo "warning disk space low $Fu %" | mail -s "Disk space alert" $TO
else
    echo "All good"
fi