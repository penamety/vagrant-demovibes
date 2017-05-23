#!/bin/bash

RUNPATH="/home/vagrant/src/demosauce"
LOGPATH="/home/vagrant/logs"

cd ${RUNPATH}

check_running() {
    if [ -z $(pidof demosauce | tr -t [:blank:] '') ]; then
        return 0
    else
        return 1
    fi
}

start_demosauce() {

    now=$(date "+[%D %T]")
    echo "${now} Starting DemoSauce" >> ${LOGPATH}/demosauce.log
    echo "${now} Starting DemoSauce" >> ${LOGPATH}/demosauce.err
    ./demosauce -c demosauce.conf >> ${LOGPATH}/demosauce.log 2>> ${LOGPATH}/demosauce.err

}

do_check() {

    RUNNING=$(check_running; echo $?)
    NOW=$(date "+[%D %T]")

    if [[ ${RUNNING} == 1 ]]; then
        sleep 2
    else
        echo "${NOW} OOPS: demosauce might have crashed, taking over!" >> ${LOGPATH}/demosauce.log
        start_demosauce
    fi

}

while true; do
    do_check
    sleep 3
done
