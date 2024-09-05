#!/bin/bash
#find command

# syantax
find /path/ [option] [expression]
# case 1 : how to serach file based on their size
find . -size 50M 

#case 2 : how to find file or only directory in a given path
find . -type f

#case 3 : search by name
find . -name filename

#case 4 : search by ignore case
find . -iname filename

#case 5 : search file by user
find . -user username

#case 6 : serch based on inode no
find . -inum inode no
#check inode 
ls -li


#case 7 : serch based on ilink
find . -links no_oflinks

#search 8 : search based on their permission
#type 1
find . -perm /u=r
#type 2
find . -perm 777



#search 9 : search file based on their start letter
find . -iname a* 
#or
find . -iname "a*"


#case 10 : search modified /created after last.txt file
find . -newer last.txt

#case 11 : search empty file
find . -empty


# case 12 : search empty file and same time in a given directory delete them
find . -empty -exec rm {} \;


#case 13 : search file size between 1-50mb
find . -size +1M -size -50M


#case 14 : search 15 days old files
find . -mtime 15 # work asa 15 * 24 
