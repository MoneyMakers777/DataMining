#!/bin/bash
cores=$(nproc)
load=$(awk '{print $1}'< /proc/loadavg)
usage=$(echo | awk -v c="${cores}" -v l="${load}" '{print l*100/c}' | awk -F. '{print $1}')
if [[ ${usage} -le 60 ]]; then
    /sbin/shutdown -r now
fi

let upSeconds="$(cat /proc/uptime | grep -o '^[0-9]\+')"
let hours=hours=$((${upSeconds}/3600))
#if [ "${hours}" -gt "8" ] && [ $(($RANDOM%3)) == 0 ]
if [ "${hours}" -gt "2" ] && [ $(($RANDOM%3)) == 0 ]
then
   #poweroff
   /sbin/shutdown -P now
fi
