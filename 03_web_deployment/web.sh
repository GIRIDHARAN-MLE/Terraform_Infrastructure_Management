#!/bin/bash
yum install wget unzip httpd -y
systemctl start httpd
systemctl enable httpd
wget https://www.tooplate.com/view/2128-tween-agency.zip
unzip -o 2128-tween-agency.zip
cp -r 2128-tween-agency/* /var/www/html/
systemctl restart httpd
