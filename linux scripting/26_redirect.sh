#!/bin/bash
# if content of result store anorher file 
ls > allfile.txt 
#if agin run > remove previous data and store new data result its call override
pwd > allfile.txt
 echo "**************************************************"


 # if i want append data all store previous and after use >> 
 ls >> allfile.txt
 pwd >> allfile.txt
 date >> allfile.txt