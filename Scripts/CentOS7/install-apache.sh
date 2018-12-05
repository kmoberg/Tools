if [ "$EUID" -ne 0 ]
	then echo "This script must be run as root."
	exit
fi



yum -y update

yum -y install httpd
systemctl start httpd
systemctl enable httpd
firewall-cmd --zone=public --permanent --add-service=http
firewall-cmd --zone=public --permanent --add-service=https
systemctl restart firewalld

yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum -y install yum-utils
yum-config-manager --enable remi-php72
yum -y install php php-mcrypt php-cli php-gd php-curl php-mysql php-ldap php-zip php-fileinfo 

setsebool -P httpd_can_network_connect

systemctl restart httpd

php -v
