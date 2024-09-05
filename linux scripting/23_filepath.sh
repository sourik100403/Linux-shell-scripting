#!/bin/bash
FILEPATH=""
if [[ -f $FILEPATH ]]
then 
    echo "file exit"
else
    echo "file creating now"
    touch $FILEPATH
    exit 1
fi