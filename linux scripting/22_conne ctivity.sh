#!/bin/bash
read -p "which site u want to connect" site
ping -c 1 $site
#sleep 5s
if [[ $? -eq 0 ]]
then 
    echo "successfully connected $site"
else
    echo "unable to connect $site"
fi