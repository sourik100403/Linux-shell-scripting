#!/bin/bash
#arithmetich opeart
read -p "enter a value of A:" a
read -p "enter the value of B:" b
#multiply
let mul=$a*$b
echo "$(($a*$b))"
#sum
echo "sum of $a + $b=$(($a+$b))"
#div
echo "division of $a / $b=$(($a/$b))"