#!/bin/bash

. /home/vagrant/pyenv/bin/activate

RUNPATH="/home/vagrant/demovibes/demovibes"
LOGPATH="/home/vagrant/logs"

cd ${RUNPATH}

nohup python sockulf.py >${LOGPATH}/sockulf.log 2>${LOGPATH}/sockulf.err &
