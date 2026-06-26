apt -y update
apt -y install nginx

systemctl enable nginx
systemctl start nginx
