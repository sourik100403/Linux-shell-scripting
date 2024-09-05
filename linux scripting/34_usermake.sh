#!/bin/bash

#step1::script should be executed as a root/sudo use
if [[ "${UID}" -ne 0 ]] # root user uid always 0
then 
    echo "please run as a sudo or root user"
    exit 1
fi

#in bash change permision of .sh file by using 
# chmod a+x filename.sh

#step2:: user should be provide atleast one argument username else guide hime
if [[ "${#}" -lt 1 ]]
then 
     echo "uses: ${0} username [comment] .........."
     echo "create a user with name and comments filed of comment"
     exit 1
fi


#step 3: store argumanet as a user name
USERNAME="${1}"
echo $USERNAME #FOR TESTING

#step 4: in case more than 1 argument all other store asa comment
shift
COMMENT="${@}"
echo $COMMENT #FOR TESTING


#step 5::create a random password
PASSWORD=$( date +%s%N )
echo $PASSWORD #for testing


#step 7 create user

useradd -c "${COMMENT}" -m "${USERNAME}"
#step 8 if the user succesfully create or not
if [[ $? -ne 0 ]]
then
    echo "account could not be created "
    exit 1
fi
#step 9 set the password of user
echo $PASSWORD | passwd --stdin $USERNAME # it problem
#solve no 1 
sudo usermod --password $(echo $PASSWORD | openssl passwd -1 -stdin) $USERNAME
#solve 2
sudo passwd $USERNAME
#use any one of solve for step 9

#step 10 check if password is succesfully set or not
if [[ $? -ne 0 ]]
then
    echo "password not set "
    exit 1
fi
#step 11 force password change on first login
passwd -e $USERNAME
#display the username,password,host
echo 
echo "Username: $USERNAME"
echo 
echo "Password : $PASSWORD"
echo
echo "HOSTNAME : $(hostname)"

