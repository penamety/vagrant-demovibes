#!/bin/bash -x

SCRIPTPWD=/vagrant/scripts

RUNPATH="/home/vagrant/demovibes/demovibes"
LOGPATH="/home/vagrant/logs"

cd "$RUNPATH"

kill -9 $(cat /tmp/demovibes*.pid)
killall -9 uwsgi
sleep 1

echo "" >/home/vagrant/logs/uwsgi-events.log
echo "" >/home/vagrant/logs/uwsgi-frontend.log

# harakiri (-t) needs post-buffering
# see: http://stackoverflow.com/questions/3970495/nginx-connection-reset-response-from-uwsgi-lost
# -R --max-requests
/usr/local/bin/uwsgi -t 300 --post-buffering 1 -R 65536 -x ${SCRIPTPWD}/uwsgi-local.xml

cd ..
cd uwsgi_events

# ugreen needs old uwsgi, start from the local copy not from env
/usr/local/bin/uwsgi -t 300 --post-buffering 1 -R 65536 -x ${SCRIPTPWD}/uwsgi-events-local.xml
