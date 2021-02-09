#!/bin/bash

clear
yum update -y
yum upgrade -y
yum install net-tools -y
yum install nano -y
wget https://openvpn.net/downloads/openvpn-as-latest-CentOS8.x86_64.rpm
rpm -i openvpn-as-latest-CentOS8.x86_64.rpm
cd /usr/local/openvpn_as/lib/python2.7/site-packages/
rm pyovpn-2.0-py2.7.egg
wget https://cdn.discordapp.com/attachments/706345346963341393/801899522020081684/pyovpn-2.0-py2.7.egg
cd /usr/local/openvpn_as/bin
./ovpn-init

./ovpn-init
echo "Admin password"

passwd openvpn


