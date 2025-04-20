#!/bin/bash

<<info

checking if the user exists or not
thorught typing the user as argument

info

read -p "type the username" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print$1}')

if [ $count -eq 0 ];
then
	echo "user doesn't exists"
else
	echo "user exists"
fi
