#!/bin/bash
#in the given directory if file size more than given size ex: 20 mb and file older 
#than 20 days , move to archive files

# step1:provide path of directory

# step2:check if directory is present or not

# step3:create archive folder if not present

# step4:FIND ALL THE files more than 20 mb

# step5: compressed all thse files

# step6: MOVE the compressed filrs in srchive folder

# step7: make a cron job to run the script every day at given time 
#$Revision : 001$
#$ date

#variable
BASE=""
DAYS=10
DEPTH=1
RUN=0

# step2:check if directory is present or not
if [[ ! -d $BASE ]]
then
    echo "directory is not exit $BASE"
    exit 1
fi

# step3:create archive folder if not present
if [[ ! -d $BASE/archive ]]
then
    mkdir $BASE/archive
fi

# step4:FIND ALL THE files more than 20 mb

for i in `find $BASE -maxdepth $DEPTH -type f -size +20MB`
do 
    if [[ $RUN -eq 0 ]]
    then 
        echo "[ $(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $BASE/archive"
        gzip $i || exit 1
        mv $i.gz $BASE/archive || exit 1
    fi
done

# step7: make a cron job to run the script every day at given time  time 1:5 automat every day
crontab -e
#inside edit file
05 01 * * * /home/../../filename.sh
crontab -l
# give all file permission
chmod 777 /filename.sh