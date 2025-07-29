#!/bin/bash

USERID=$(id -u)

echo "User id is : $USERID"

if [ $USERID -ne 0 ]
then
echo "Please run script with root user"
exit 1
fi

yum install git -y