#!/bin/bash
shopt -s expand_aliases
$host = $(hostname -s)

echo "Backing up $host"

ad="/opt/atlassian /var/atlassian/application-data"
bd="/srv/atlassian/$host"
ts=$(date +%F-%H-%M)
lc="/tmp/atlassian_bak-$ts.log"

rsync -avR --no-owner --no-group --log-file=$lc $ad $bd

echo "Backing up the database"

LOG1=/tmp/backup1.log
LOG2=/tmp/backup2.log
BASEDIR=/tmp/mysqlbackup
BAKDIR=$bd

if [ -e $BASEDIR ]
then
	rm -rf $BASEDIR/*
else
	mkdir -p $BASEDIR
fi

innobackupex --user=root $BASEDIR 2>&1 | tee $LOG1
# Return status is probably good enough, but the script also outputs Completed OK
if grep -q 'innobackupex: completed OK' $LOG1 ; then
	BAKDIR=$(grep 'created in directory' $LOG1 | awk '{print $NF}' | sed "s@'@@g")
	innobackupex --apply-log --use-memory=4G $BAKDIR 2>&1 | tee $LOG2
	if grep -q 'innobackupex: completed OK' $LOG2 ; then
	
		# All backup tasks completed successfully
		ad="$ad $BASEDIR"
	fi
fi

# Make all the syncs happen
rsync -avR --no-owner --no-group --log-file=$lc $ad $bd

# Update the symlink if it exists
#if [ -L $bd/latest ]; then
#	rm -fv $bd/latest
#fi

#ln -vs $bd/$(basename ${BAKDIR}) $bd/latest

# Destroy the oldest backups
find $BASEDIR -mindepth 1 -maxdepth 1 -type d -mtime +5 -exec rm -rf {} +
