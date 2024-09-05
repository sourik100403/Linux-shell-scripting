#!/bin/bash
#ack usefull function
#how to replace aword raju to raja
awk '{gsub("raju","raju"); print $0}' sample.txt
#length of line or field
awk '{print length($2)}' sample.txt
#index/position of given line
awk '/paul/{print NR, index($0, "paul")}' sample.txt
#upper or lower case
awk '{print tolower($5)}' sample.txt
awk '{print toupper($5)}' sample.txt