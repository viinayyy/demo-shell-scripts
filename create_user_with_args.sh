#!/bin/bash

<<help

this is a shell script
which creates users with arguments

help

#arguments ./create_user_with_args.sh username password
echo "========== Creation of User Started =============="
echo "Enter the Username: " $1

echo "Enter the password: " $2

sudo useradd -m "$1"

echo -e "$2\n$2" | sudo passwd "$1"

echo "========== Creation of User Done =============="

sudo userdel $1

echo "========== Deletion of User Done =============="

cat /etc/passwd | grep "$1" | wc | awk '{print $1}'

echo "as wc is 0 user is deleted"


