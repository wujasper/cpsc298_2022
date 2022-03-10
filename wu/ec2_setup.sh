#!/usr/bin/bash
yum update -y
yum install httpd -y
yum install git -y 
mkdir /jcode
cd /jcode
git clone --branch wu https://github.com/wujasper/cpsc298_2022.git
sed -e "s/REPLACE_DATE/$(date)/" cpsc298_2022/wu/html/index.html | tee /var/www/html/index.html 
service httpd start
chkconfig httpd on
