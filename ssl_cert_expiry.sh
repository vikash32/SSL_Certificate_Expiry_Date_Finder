#!/usr/bin/bash

#This simple script will let you know the expiry date of certificate and after how many days from today certificate will expire.

# Here i am using curl instead of openssl as it provide complete details
#and dump all info in file for further information if you want

`curl -s --trace-ascii dump.txt $1` 

myDate=`grep 'expire date' dump.txt | awk ' {print $5" "$6" "$8}'`

read mon day year <<< "$myDate"

x=`date -d "$mon $day $year" "+%Y %m %d"`

echo "Certificate expiry date : $myDate"
read years months days <<< "$x"


# removing leading 0 fom date and month otherwise it will treated as octal value

month=`echo $months | awk '{print $1 + 0}'` 
day=`echo $days | awk '{print $1 + 0}'`
year=`echo $years | awk '{print $1 + 0}'`

#echo "$month $day $year"

remaining_day=`python -c "from datetime import date as d; print (d($year, $month, $day) - d.today()).days" `

echo "Certificate will expire in $remaining_day days"
