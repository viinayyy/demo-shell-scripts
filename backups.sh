#!/bin/bash

<<info 
this automates the process of backups
src /home/ubuntu/scripts
dest /home.ubuntu/backups
info


src="$1"
dest="$2"

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r " $dest-$timestamp.zip" $src > /dev/null

echo "Backup completed"
