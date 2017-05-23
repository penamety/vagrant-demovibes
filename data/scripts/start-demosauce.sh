#!/bin/bash

RUNPATH="/home/vagrant/src/demosauce"
LOGPATH="/home/vagrant/logs"

cd ${RUNPATH}

now=$(date "+[%D %T]")
echo "${now} Starting DemoSauce" >> ${LOGPATH}/demosauce.log
echo "${now} Starting DemoSauce" >> ${LOGPATH}/demosauce.err
nohup ./demosauce -c demosauce.conf >${LOGPATH}/demosauce.log 2>${LOGPATH}/demosauce.err &
