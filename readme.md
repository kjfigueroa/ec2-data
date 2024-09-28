It's considered according to the example an instance of amazon linux

```bash
#!/usr/bin/bash
yum update -y
yum install -y httpd
systemctl enable --now httpd
/usr/bin/curl -s https://raw.githubusercontent.com/kjfigueroa/ec2-data/refs/heads/main/script.sh -o $HOME/script.sh
/usr/bin/bash $HOME/script.sh
rm -f $HOME/script.sh
```