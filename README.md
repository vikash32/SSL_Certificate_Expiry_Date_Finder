# ssl_cert_expiry.sh info
install curl if it is not installed, by default it always install, but install it if it is not.
```
yum install curl
```
then download the script and make the script executable by changing permission.
```
chmod +x ssl_cert_expiry.sh
```
now to run the script pass any domain name as an argument with https protocol.
for ex : -
```
[root@localhost curl]# ./ssl_certification.sh https://uk.shopping.yahoo.net
Certificate expiry date : May 18 2016
Certificate will expire in 289 days
```
```
[root@localhost curl]# ./ssl_certification.sh https://google.com
Certificate expiry date : Oct 21 2015
Certificate will expire in 79 days
```
