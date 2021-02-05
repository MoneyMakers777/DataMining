#!/bin/bash -xe
echo "export systemID=$systemID
cd /root
rm mAfterSystemRestartScript.sh
wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/mAfterSystemRestartScript.sh
chmod +x mAfterSystemRestartScript.sh
./mAfterSystemRestartScript.sh" > /root/initializeSystem.sh
chmod +x /root/initializeSystem.sh
crontab -l | { cat; echo "@reboot /root/initializeSystem.sh"; } | crontab -
echo "cd /root
rm m10min.sh
wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/m10min.sh
chmod +x m10min.sh
./m10min.sh" > /root/repeatableCMD.sh
chmod +x /root/repeatableCMD.sh
crontab -l | { cat; echo "*/10 * * * * /root/repeatableCMD.sh"; } | crontab -
/root/initializeSystem.sh
