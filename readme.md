# What to do

It's considered according to the example an instance of amazon linux

```bash
#!/bin/bash
yum update -y && yum install git httpd -y
systemctl enable --now httpd
git clone git@github.com:kjfigueroa/ec2-data.git userdata-00
/usr/bin/bash userdata-00/script.sh
```