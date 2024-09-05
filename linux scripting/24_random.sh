#!/bin/bash
#random variable
no=$RANDOM 
echo "$no"
#random betwween 0 to 6
NO=$(( $RANDOM %6 +1 ))
echo "$NO"
