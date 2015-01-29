#! /bin/bash

function dtor ()
{
    rm -f $crontab_file;
}

function add_crontab ()
{
    script=$1
    lock=$2

    crontab_file=`mktemp`;
    trap dtor EXIT;
    > $crontab_file;
    crontab -l > $crontab_file 2>/dev/null;
    grep -q "^[^#]*$script" $crontab_file
    [ $? -eq 0 ] && echo "'cmd \"$script\" in crontab already!" && exit 0;
    echo "*/1 * * * * flock -o -n $lock $script 1>/dev/null 2>&1" >> $crontab_file;
    crontab $crontab_file;
}

add_crontab "touch /tmp/linjing" "/tmp/linjing.touch.lock"
