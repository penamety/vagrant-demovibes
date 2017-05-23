#!/bin/bash

RUNPATH="/home/vagrant/demovibes/demovibes"
LOGPATH="/home/vagrant/logs"

cd "$RUNPATH"

# kill old instance
pkill -9 sockulf.py

. /home/vagrant/pyenv/bin/activate

while true; do 
	python sockulf.py >> "$LOGPATH/sockulf.log" 2>> "$LOGPATH/sockulf.err"
	sleep 30
done
