#!/bin/bash
#switch case
echo "switch case"
echo "a=print current date"
echo "b=all list detaild"
echo "c=print current working directory"
read choice
case $choice in
      a)
       echo "print all"
       date
       ls
       pwd
       ;;
      b)ls;;
      c)pwd;;
      *)"none of valid"
esac