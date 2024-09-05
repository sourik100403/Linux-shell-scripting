#!/bin/bash
# for automate use at or crontab 

#using at 
at 12:07 AM  # at 23:09 31 july 2034 
#<command>
#ctrl+d


#use atq for check schedul job
atq
#use atrm <id> remove schedul job
atrm 3

# use crontab
crontab -l #check existing job
crontab -e #  add new job
#inside edit
# * * * * * cd location && file.sh

