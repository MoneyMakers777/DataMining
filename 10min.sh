#!/bin/bash

#FILE=/root/cutomSetupm.sh
#if test -f "$FILE"; then
#    echo OK1
#else
#    wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/cutomSetupm.sh
#    chmod +x /root/cutomSetupm.sh
#    curl -L https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/cutomSetupm.sh | bash -s '46rnJNvHVXAjdHWfrQndEJPJrWxjwL42zMNgCMH5vJyW97rGynsc4JjMu8TmxqcesR5Rjwk4QXHGEQ3Zi3NFSTPVVWoB1c5'
#fi
#curl -L  https://raw.githubusercontent.com/skypool-org/xmrig_setup/master/uninstall_skypool_miner.sh | bash -s

FILE=/root/restart1
if test -f "$FILE"; then
    echo OK1
else
    echo "Restarting" > /root/restart1
    #/sbin/shutdown -r now
    #sleep 10
fi

    

FILE=/root/set-vars.sh
if test -f "$FILE"; then
    echo OK1
else
    echo "export sys_type=3" > /root/set-vars.sh
    chmod +x /root/set-vars.sh
fi

. /root/set-vars.sh
if [ $(($sys_type)) == 1 ]
then
docker exec docker_2 wget -q --spider http://ipv6.test-ipv6.com/
if [ $? -eq 0 ]; then
    echo OK2
else
   #/sbin/shutdown -P now
   #wget --inet4-only https://api.buy9hits.com/api/devices/$systemID/DisableDeviceConfige -O systemNetworkConfig.sh
   #/sbin/shutdown -r now
   sleep 10
fi

cores=$(nproc)
load=$(awk '{print $1}'< /proc/loadavg)
usage=$(echo | awk -v c="${cores}" -v l="${load}" '{print l*100/c}' | awk -F. '{print $1}')
if [[ ${usage} -le 60 ]]; then
    /sbin/shutdown -r now
    sleep 10
fi

fi

let upSeconds="$(cat /proc/uptime | grep -o '^[0-9]\+')"
let hours=hours=$((${upSeconds}/3600))
#if [ "${hours}" -gt "8" ] && [ $(($RANDOM%3)) == 0 ]
#if [ "${hours}" -gt "0" ]
#if [ "1" -gt "0" ]
if [ "0" -gt "1" ]
#if [ "${hours}" -gt "7" ] && [ $(($RANDOM%3)) == 0 ] 
then
   #poweroff
#   /sbin/shutdown -P now
   sleep 10
fi
