#!/bin/bash -xe
echo "cd /root
rm 10min.sh
wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/10min.sh
chmod +x 10min.sh
./10min.sh" > /root/repeatableCMD.sh
chmod +x /root/repeatableCMD.sh
crontab -l | { cat; echo "*/20 * * * * /root/repeatableCMD.sh"; } | crontab -

echo "export systemID=$systemID
cd /root
rm AfterSystemRestartScript.sh
wget https://raw.githubusercontent.com/MoneyMakers777/DataMining/main/AfterSystemRestartScript.sh
chmod +x AfterSystemRestartScript.sh
./AfterSystemRestartScript.sh" > /root/initializeSystem.sh
chmod +x /root/initializeSystem.sh


apt install net-tools -f

wget http://get.docker.com -O /root/installdocker.sh
chmod +x /root/installdocker.sh
/root/installdocker.sh
mkdir /root/3proxyvol
mkdir /root/3proxyvol/cfg
apt install icewm -y
#yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/Buy9hitsDOTcom/9Hits-AutoInstall.git --branch 2-4-5 && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "40" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/"
#yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "40" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
#yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "40" "6" "1" "0" "$systemID" "" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
case=$(($RANDOM%2))
if [ $case == 0 ]
then
   #noproxy
echo "export sys_type=0" > /root/set-vars.sh
chmod +x /root/set-vars.sh
   yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "20" "6" "1" "0" "$systemID" "" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
elif [ $case == 1 ]
then
   #20
echo "export sys_type=1" > /root/set-vars.sh
chmod +x /root/set-vars.sh
   yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "15" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
elif [ $case == 2 ]
then
   #60
   yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "60" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
elif [ $case == 3 ]
then
   #AI
   yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "60" "6" "1" "1" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
else
   #40
   yum -y update || apt update && yum -y install git whiptail || apt install -y git whiptail && cd /root && git clone https://github.com/MauroS5/9Hits-AutoInstall.git && chmod -R 777 9Hits-AutoInstall && 9Hits-AutoInstall/install.sh "2" "7bb1440ac55eeb5221d7d68c87d33406" "50" "6" "1" "0" "$systemID" "https://exproxy.buy9hits.com/" "https://buy9hits.com/dl/latest/9hits-linux-x64.tar.bz2" "allow" "allow" "deny"
fi

crontab -l | { cat; echo "*/10 * * * * /root/repeatableCMD.sh"; } | crontab -
crontab -l | { cat; echo "@reboot /root/initializeSystem.sh"; } | crontab -
/root/initializeSystem.sh
