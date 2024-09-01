#!/bin/bash

USERID=$(id -u)  # it provides 0 if it has root access
echo "User ID is : $USERID"
if [ $USERID -ne 0]
 then 
 echo "please run this script with root user"
 exit 1
 fi
 
 ls -l