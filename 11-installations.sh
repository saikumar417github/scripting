#!/bin/bash

USERID=$(id -u)

echo "User id is : $USERID"

if [ $USERID -ne 0 ]
then
echo "Please run script with root user"
exit 1
fi

yum list installed git

if [ echo $? -gt 0 ]
then 
echo "Git is not installed, goting to install it"
yum install git -y
else
echo "Git is already installed nothing to do"
fi