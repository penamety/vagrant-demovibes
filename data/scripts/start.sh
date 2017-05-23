#!/bin/bash -x
cd /vagrant/scripts
./start-uwsgi.sh >~/logs/start-uwsgi.log 2>&1 &
./start-sockulf.sh >~/logs/start-sockulf.log 2>&1 &
sleep 5
./start-demosauce.sh >~/logs/start-demosauce.log 2>&1 &
exit 0
