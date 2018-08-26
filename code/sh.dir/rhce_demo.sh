#!/bin/bash 
#部署WEB服务器，调整好防火策略禁止172.34.0.0/24网段访问。允许其他任何客户机访问
yum -y install httpd
mkdir /var/www/www0
echo '<virtualhost *:80>
servername www0.example.com
documentroot /var/www/www0
</virtualhost>'> /etc/httpd/conf.d/nsd01.conf
#wget -O /var/www/www0/index.html http://classroom/pub/materials/station.html
echo "yashua" > /var/www/www0/index.html
systemctl restart httpd
systemctl enable httpd
systemctl restart firewalld
systemctl enable firewalld
firewall-cmd --set-default-zone=trusted 
firewall-cmd --zone=block --add-source=172.34.0.0/24
firewall-cmd --permanent --zone=trusted --add-forward-port=port=5423:proto=tcp:toport=80
firewall-cmd --reload
