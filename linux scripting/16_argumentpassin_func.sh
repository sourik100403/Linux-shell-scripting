#!/bin/bash
#RGUMENT PASS IN FUNCTION 
addition(){
    local num1=$1
    local num2=$2
    let sum=$num1 + $num2
    echo "sum of $num1 and $num2 =$sum"
}
addition 9 8