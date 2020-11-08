#!/bin/bash
cores=$(nproc)
load=$(awk '{print $1}'< /proc/loadavg)
usage=$(echo | awk -v c="${cores}" -v l="${load}" '{print l*100/c}' | awk -F. '{print $1}')
if [[ ${usage} -le 60 ]]; then
    /sbin/shutdown -r now
fi
