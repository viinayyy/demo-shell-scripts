#!/bin/bash

<<help

this is a shell script 
to create users

help

echo "========== Creation of User Started =========="

read -p  "Enter the username:" username

read -p "Enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "=========== Creation of User Completed =============="
