#!/bin/bash
yum update -y && yum install git httpd -y
systemctl enable --now httpd
git clone git@github.com:kjfigueroa/ec2-data.git
/usr/bin/bash ec2-data/script.sh