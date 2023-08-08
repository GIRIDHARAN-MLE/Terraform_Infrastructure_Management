#!/bin/bash
yum install wget unzip httpd -y
systemctl start httpd
systemctl enable httpd
wget https://www.tooplate.com/zip-templates/2134_gotto_job.zip
unzip -o 2134_gotto_job.zip
cp -r 2134_gotto_job/* /var/www/html/
systemctl restart httpd
