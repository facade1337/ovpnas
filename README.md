# ovpnas
OpenVPN Access Server with an unlimited license. 
How to initalize it on a completely new instance.

```
sudo su
cd ~
yum install wget -y && wget https://raw.githubusercontent.com/peter6C6F6C/ovpnas/main/setup.sh && sudo bash setup.sh
```
This will install the openvpn Access Server, edit the config to disable logging, and reboot the machine.
Now when the machine is back up and running you should be able to go to
https://{yourpublicip}/admin and set it up. If you're running the machine behind a nat go into the Network settings and change the hostname to your public ip and update the appropriate fields then reboot once more.
