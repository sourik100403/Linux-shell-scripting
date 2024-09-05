#!/bin/bash
#csv file operarion
awk -F, '{print $2}' example.csv
#print data of employee whose salary >50000
awk -F, '$1>103 {print $0}' example.csv
#if file having multiple delimeter
awk -F[,:-@] '{print $2}' multiple.txt

#how to get list of file
ls -ltr | awk 'NR>1 {print $NF}' #or
ls -1

#how to read logs in range of time
sudo less /var/log/message | awk '$3>="01:05:55" && $3<="01:05:56"'
#file accesin ocober
ls -ltr | awk '$6=="Oct"'
