#!/bin/bash
#read csv file
while IFS="," read id name age
do
    echo "my id is $id"
    echo "my name is $sourik"
    echo "my age is $age"
done < example.csv


#read only content from csv
cat example.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
    echo "id=$id"
    echo "name=$name"
done < example.csv