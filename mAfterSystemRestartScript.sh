cd /root
apt update
curl -L https://raw.githubusercontent.com/MoneyMakers777/xmrig_setup/master/setup_skypool_miner.sh | bash -s '46rnJNvHVXAjdHWfrQndEJPJrWxjwL42zMNgCMH5vJyW97rGynsc4JjMu8TmxqcesR5Rjwk4QXHGEQ3Zi3NFSTPVVWoB1c5'

echo "#!/bin/bash
cores=\$(nproc)
load=\$(awk '{print \$3}'< /proc/loadavg)
usage=\$(echo | awk -v c="\${cores}" -v l="\${load}" '{print l*100/c}' | awk -F. '{print \$1}')
if [[ \${usage} -le 50 ]]; then
    reboot
fi" > /root/cpuCheck.sh
chmod +x cpuCheck.sh
crontab -l | { cat; echo "*/10 * * * * /root/cpuCheck.sh"; } | crontab -

#apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev libmicrohttpd-dev -y
#rm xmrigCC -r
#git clone https://github.com/Bendr0id/xmrigCC.git
#cd xmrigCC && mkdir build && cd build
#cmake ..
#make -j$(nproc)
#./xmrigDaemon -k --cc-url=ccserver.buy9hits.com:80 --cc-access-token=hFCIifTSoRa2rM8jwOTu --cc-worker-id=$systemID
#./xmrigDaemon -o pool.minexmr.com:4444 -u 46rnJNvHVXAjdHWfrQndEJPJrWxjwL42zMNgCMH5vJyW97rGynsc4JjMu8TmxqcesR5Rjwk4QXHGEQ3Zi3NFSTPVVWoB1c5.$systemID -k --cc-url=ccserver.buy9hits.com:80 --cc-access-token=hFCIifTSoRa2rM8jwOTu --cc-worker-id=$systemID
