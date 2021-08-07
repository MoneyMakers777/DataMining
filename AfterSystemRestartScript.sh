cd /root
rm systemNetworkConfig.sh
wget https://api.buy9hits.com/api/devices/$systemID/GetDeviceConfige -O systemNetworkConfig.sh
chmod +x systemNetworkConfig.sh
#sleep 120
/root/systemNetworkConfig.sh

rm /etc/docker/daemon.json
wget https://api.buy9hits.com/api/devices/$systemID/GetDeviceDaemon -O daemon.json
mv daemon.json /etc/docker/daemon.json

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
service docker restart
. /root/set-vars.sh
rm createdockers.sh
if [ $(($sys_type)) == 2 ]
then
wget -O createdockers.sh https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/create9hitsdockers.sh
else
wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/createdockers.sh
fi

chmod +x createdockers.sh
/root/createdockers.sh
rm /root/3proxyvol/cfg/3proxy.3cf
wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/3proxy.3cf
mv 3proxy.3cf /root/3proxyvol/cfg/3proxy.3cf
rm /root/3proxyvol/cfg/3proxy.cfg
wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/3proxy.cfg
mv 3proxy.cfg /root/3proxyvol/cfg/3proxy.cfg
rm restartdockers.sh
wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/restartdockers.sh
chmod +x restartdockers.sh
/root/restartdockers.sh
/root/systemNetworkConfig.sh
