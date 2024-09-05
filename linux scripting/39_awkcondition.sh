#!/bin/bash
#how to get length of longest line
awk '{if (length($0)>max)max=length($0)} {print "the max line length:" max}'
#print high if salary >50k else low
awk '{if($NF>50000) $7="High;else $7="Low";print $0}' sample.txt
#print total salary paid in loan
awk '{if($5=="Loan")sum+=$NF} END{print "total loan salary is :" sum}' sample.txt