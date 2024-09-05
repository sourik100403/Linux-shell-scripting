#!/bin/bash
#id fname lname salar
#print all fname
awk '{print $2}' sample.txt
#print all
awk '{print $0}' sample.txt
#print given colum and more than 1
awk '{print $2,$1}' sample.txt
#print last colum not count
awk '{print $NF}' sample.txt
#serach data from table
awk '/serachdata/{print $0}' sample.txt
#print given line no
awk '{print NR, $0}' sample.txt
#serach data which line 
awk '/serachdata/{print NR, $0}' sample.txt
#print line no 6
awk 'NR==6{print NR, $0}' sample.txt
#PRINT RANGE OF LINE 3 TO 6
awk 'NR==3,NR==6 {print NR, $0}' sample.txt
#PRINT EMPTY LINE
awk 'NF==0 {print NR}' sample.txt
#search multiple word 
awk '/serchdata1|data2|data3|.../ {print $0}' sample.txt
#ignore case while search
awk 'BEGIN{IGNORECASE=1} /searchdata/ {print $0}' sample.txt
#HOW TO CHECK GIVEN CHARECTER PRESENT OR NOT   ,WHOSE NAME IN A PRINTTHIS
awk '$2 ~ /serachcharacter like a/ {print $0}' sample.txt