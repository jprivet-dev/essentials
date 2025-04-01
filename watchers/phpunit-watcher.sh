#!/bin/bash

# !!! EXPERIMENTAL !!!

# @see https://superuser.com/questions/181517/how-to-execute-a-command-whenever-a-file1-changes
#
# Usage:
# $ . scripts/phpunit-watcher.sh

command=$1
file1=$2
file2=$3

time1Last=$(stat -c %Z $file1)
time2Last=$(stat -c %Z $file2)
relaunch=1

echo "Watch :"
echo "- $file1"
echo "- $file2"

while true; do
    time1Current=$(stat -c %Z $file1)
    time2Current=$(stat -c %Z $file2)

    if [[ "$time1Current" != "$time1Last" ]]; then
        time1Last=$time1Current
        relaunch=1
    fi

    if [[ "$time2Current" != "$time2Last" ]]; then
        time2Last=$time2Current
        relaunch=1
    fi

    if [[ "$relaunch" == 1 ]]; then
        relaunch=0
        $command
    fi

    sleep 1
done
