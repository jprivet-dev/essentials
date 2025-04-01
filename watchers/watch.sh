#!/bin/bash

# !!! EXPERIMENTAL !!!

# @see https://stackoverflow.com/questions/5157538/php-activity-log-to-see-which-files-are-being-executed
# @see https://stackoverflow.com/questions/2527017/whats-the-fastest-way-using-lsof-to-find-a-single-open-file
# @see https://unix.stackexchange.com/questions/17999/how-can-i-run-watch-as-a-background-job
#
# Usage:
# $ . scripts/watch.sh my command

#watch -w -n 5 --color $@
#watch -n 1 -g ls -l ./src/ && echo date

trap exit SIGQUIT SIGINT
while :; do
    make unit
#    watch -n 1 -g ls -l --full-time ./src ./tests ./templates &>/dev/null
    watch -n 1 -g ls -lR --full-time ./src ./tests ./templates &>/dev/null
    sleep 1
done
