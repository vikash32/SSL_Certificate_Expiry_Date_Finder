# Shell-Scripts
Several scripts which directly influence our daily work activities. 
# ssl_cert_expiry.sh info
install curl if it is not installed, by default it always install, but install it if it is not.
<p>yum install curl</p>
then download th script
<p>chmod +x ssl_cert_expiry.sh</p>
<p>now to run the script pass any domain name as an argument with https protocol.</p>
for ex : -
<p>[root@localhost curl]# ./ssl_certification.sh https://uk.shopping.yahoo.net</h4></p>
<p><i>Certificate expiry date : May 18 2016</i></p>
<p><i>Certificate will expire in 289 days</i></p>

<p>[root@localhost curl]# ./ssl_certification.sh https://google.com</p>
<p><i>Certificate expiry date : Oct 21 2015</i></p>
<p><i>Certificate will expire in 79 days</i></p>
