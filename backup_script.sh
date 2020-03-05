#!/bin/bash

#Script to backup whole home directory on hourly basis.

#Hourly backup script.
sudo cp backup_script.sh /etc/cron.hourly

#Edit directoty to be backed up here.
DIR="/home/joseph/Desktop/shell_script/backupFolder/"
tar -czvf backup.tar $DIR





