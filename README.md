# Shell-Scripts
Several scripts which directly influence our daily work activities. 
# ssl_cert_expiry.sh info
install curl if it is not installed, by default it always install, but install it if it is not.
<yum install curl>
then download th script
<chmod +x ssl_cert_expiry.sh>
now to run the script pass any domain name as an argument with https protocol.
for ex : -
<[root@localhost curl]# ./ssl_certification.sh https://uk.shopping.yahoo.net
Certificate expiry date : May 18 2016
Certificate will expire in 289 days>

<[root@localhost curl]# ./ssl_certification.sh https://google.com
Certificate expiry date : Oct 21 2015
Certificate will expire in 79 days>

This script will be useful as external check for certificate expiry check monitor for zabbix and nagios.

you can use it for multiple domain at a time after simple modification.

please feel free for any query. More than happy to help.
