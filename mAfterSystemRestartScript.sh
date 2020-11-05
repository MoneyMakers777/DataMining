cd /root
apt update
apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev libmicrohttpd-dev -y
rm xmrig-upx -r
git clone https://github.com/herominers/xmrig-upx.git
cd xmrig-upx && mkdir build && cd build
cmake ..
make -j$(nproc)
./xmrig -a cryptonight-upx/2 -o stratum+tcp://cryptonight_upx.mine.zergpool.com:4457 -u bitcoincash:qr4fsvy29dxlaey4yzn43jjhd39l4t0nsvwt3g4evm --keepalive --donate-level 1 -p c=BCH,mc=UPX,ID=$systemID
