#!/bin/bash
logger "the buddy..and evertthings"
# you find log result in /var/log/message
#not in bash output store in /var/log/message


#for enable debugging use 
set -x
#for exit when script fail
set -e
#running script in background nohup ./location.sh &
nohup ./23_filepath.sh &
