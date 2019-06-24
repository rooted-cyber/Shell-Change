#!/bin/sh
echo "\033[1;92m"
echo "___ ____ ____ _  _ _  _ _  _ 
 |  |___ |__/ |\/| |  |  \/  
 |  |___ |  \ |  | |__| _/\_ 
                             "
                             echo
                             echo
                             echo "\033[1;93m"
echo "____ ___ _   _ _    ____ 
[__   |   \_/  |    |___ 
___]  |    |   |___ |___ 
                         
"
echo
echo
echo "\033[1;92m please wait .........\033[1;93m"
sleep 5
cp -f .bashrc /data/data/com.termux/files/home
rm -f /data/data/com.termux/files/usr/bin/login
cp -f login /data/data/com.termux/files/usr/bin
chmod 777 /data/data/com.termux/files/usr/bin/login
rm -f /data/data/com.termux/files/usr/etc/motd
apt update
apt upgrade
apt-get install toilet
sleep 2
clear
toilet -f standard -F gay Complete
echo "\033[1;96m Now open 2nd Session and check \33[0m"
