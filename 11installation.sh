#!/bin/bash

USERID=$(id -u)  # it provides 0 if it has root access
echo "User ID is : $USERID"

if [ $USERID -ne 0 ]
 then 
 echo "please run this script with root user"
 exit 1

fi
 
 dnf list installed git

if [ $? -ne 0 ] 
  then
       echo " git is not installed, going to install it:  "
       dnf install git -y
       if [ $? -ne 0 ] 
          then
          echo "git installation is not success.. check it"
          exit 1:
          else
          echo " git installation success"
        fi 
    else
    echo "Git is already installed, nothing to do.."

fi

