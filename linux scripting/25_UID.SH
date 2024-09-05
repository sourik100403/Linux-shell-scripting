#!/bin/bash
if [[ $UID -eq 0 ]]
then 
    echo "root user"
else 
    echo "not a root user"