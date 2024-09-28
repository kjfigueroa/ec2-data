It's considered according to the example an instance of amazon linux

```bash
#!/bin/bash
yum update -y && yum install curl httpd -y
systemctl enable --now httpd
curl <URL> -o script.sh
/usr/bin/bash script.sh
```