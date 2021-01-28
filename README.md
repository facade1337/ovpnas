# ovpnas
OpenVPN Access Server with an unlimited license. 
How to initalize it on a completely new instance.

```
sudo su
cd ~
yum install wget -y && wget https://raw.githubusercontent.com/PGBRULES/ovpnas/main/setup.sh && sudo bash setup.sh
cd /usr/local/openvpn_as/etc/
sudo nano as.conf
```
Locate the line that says log_db (Normally line 34) and add a # infront of log_db to comment out the whole line to disable the logging functionality. 
Then go to the bottom of the file and paste in:
```
sa.company_name={your chosen vpn name}
verb 0
log /dev/null
status /dev/null
```
This further disables logging. Exit the file and reboot the machine.
Now when the machine is back up and running you should be able to go to
https://{yourpublicip}/admin and set it up. If you're running the machine behind a nat go into the Network settings and change the hostname to your public ip and update the running server.
Now you're all done.
