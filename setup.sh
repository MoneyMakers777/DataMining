#!/bin/bash -xe
export systemID=$systemID
cd /root
rm setup_m.sh
wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/setup_m.sh
chmod +x setup_m.sh
./setup_m.sh
