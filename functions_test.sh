#!/bin/bash

<<info

This is an explanation of functions

info

function create_user {

read -p "Enter the Username: " username

sudo useradd -m $username

echo "user created successfully"
}

create_user
create_user
create_user

