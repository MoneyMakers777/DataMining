cd /root
apt update
apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev libmicrohttpd-dev -y
rm xmrigCC -r
git clone https://github.com/Bendr0id/xmrigCC.git
cd xmrigCC && mkdir build && cd build
cmake ..
make -j$(nproc)
./xmrigDaemon -a rx/0 -o stratum+tcp://randomx.mine.zergpool.com:4448 -u bitcoincash:qr4fsvy29dxlaey4yzn43jjhd39l4t0nsvwt3g4evm --keepalive --donate-level 1 -p c=BCH,mc=XMR,ID=$systemID
