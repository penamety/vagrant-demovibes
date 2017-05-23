#!/bin/bash -x
/vagrant/scripts/start-uwsgi.sh >~/logs/start-uwsgi.log 2>&1 &
/vagrant/scripts/start-sockulf.sh >~/logs/start-sockulf.log 2>&1 &
sleep 2
/vagrant/scripts/start-demosauce.sh >~/logs/start-demosauce.log 2>&1 &
exit 0
