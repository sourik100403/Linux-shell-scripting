#!/bin/bash
# awk 
#     'BEGIN{start_action}
#         pattern/condition{action}
#     END{stop_action}'  filename.txt
awk 'BEGIN{print "******start*******"} {print $0} END{print "*****the end******}' sample.txt




#varible how use
awk 'BEGIN{sum=0} {print sum} END{}' sample.txt
#how to total sum of salary answer print one time
awk 'BEGIN{sum=0} {} END{print sum}' sample.txt
#function defination written
awk 'BEGIN{sum=0} {sum=sum+$NF} END{print sum}' sample.txt #or
awk '{sum=sum+$NF} END{print sum}' sample.txt #same answer



#how to find avg salary
    awk 'NR>1 {if ($NF>0)count++;sum+=$NF} END{print "no of employee: " count sum "the avg salary:" sum/count}' filename.txt

#count no of user,reomeve hederline
awk '{count++} END{print "no of employee: " count}' filename.txt #itsgiven two extra line 1st header and last blank
    #remove this two line
    awk 'NR>1 {if ($NF>0)count++} END{print "no of employee: " count}' filename.txt
#print no of line
awk '{} END{print NR}' sample.txt
