#!/bin/bash
apt update -y || yum update -y
apt install nginx -y || yum install nginx -y

systemctl enable nginx
systemctl start nginx

sudo chown $USER:$USER /usr/share/nginx/html/index.html

cat <<EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Third-Task</title>
</head>
<body>
    <h1>Max Verchinskyi $(hostname -f)</h1>
</body>
</html>
EOF
