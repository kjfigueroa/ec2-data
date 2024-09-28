In the example we have an AMI: al2023-ami-2023.5.20240916.0-kernel-6.1-x86_64. The commands can be adapted according to the preferred (Linux) image.

```bash
#!/usr/bin/bash
yum update -y
yum install -y httpd
systemctl enable --now httpd
/usr/bin/curl https://raw.githubusercontent.com/kjfigueroa/ec2-data/refs/heads/main/script.sh -o $HOME/script.sh
/usr/bin/bash $HOME/script.sh
rm -f $HOME/script.sh
```