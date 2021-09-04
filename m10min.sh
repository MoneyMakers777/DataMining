#!/bin/bash
cores=$(nproc)
load=$(awk '{print $1}'< /proc/loadavg)
usage=$(echo | awk -v c="${cores}" -v l="${load}" '{print l*100/c}' | awk -F. '{print $1}')
#wget https://iplogger.org/2cwjf6
if [[ ${usage} -le 60 ]]; then
 #   wget https://iplogger.org/2cShf6
    /sbin/shutdown -r now
    #/sbin/shutdown -P now
    sleep 10
fi
