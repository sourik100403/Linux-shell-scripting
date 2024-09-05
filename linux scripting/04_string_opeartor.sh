#!/bin/bash
mystring="hey is a linux shells"
echo "${mystring}"
length=${#mystring}
echo "$length"
echo "upper acse is ${mystring^^}"
echo "lower case is ${mystring,,}"
echo "repace is ${mystring/is/are}"
echo "slice is ${mystring:2:5}"
echo "finishing"