#!/bin/bash

USERID=$(id -u)

echo "User id is : $USERID"

if [ $USERID -ne 0 ]
then
echo "Please run script with root user"
exit 1
fi

yum list installed gitttt

if [ $? -ne 0 ]
then 
echo "Git is not installed, goting to install it"
yum install git -y
if [ $? -ne 0 ]
then
echo "Git installation is failed, please check"
else
echo "Git installation is successful"
fi
else
echo "Git is already installed nothing to do"
fi