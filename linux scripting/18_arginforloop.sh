#!/bin/bash
echo "1 st argument is $1"
echo "2nd argument is $2"
echo "all argument is $@"
echo "number of argument is $#"

for arg in $@
do
    echo "argument is $arg"
done