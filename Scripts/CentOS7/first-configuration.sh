echo "Enter a new hostname"
read newHostname

hostnamectl set-hostname $newHostname
printf "MARKANT NORGE AS\n Linux: $newHostname \n IP: \\4 \n\n \S \n Kernel \\r on an \m \n\n NOTICE! ALL UNAUTHORIZED ACCESS PROHIBITED!\n ALL ACTIVITY IS LOGGED AND ACTIVELY MONITORED.\n UNAUTHORIZED ACCESS WILL BE PROSECUTED.\n" > /etc/issue

yum install wget cockpit zip bind-utils unzip firewalld git lsof vim nano -y
systemctl restart firewalld
systemctl enable firewalld
firewall-cmd --permanent --add-service=cockpit
firewall-cmd --reload
systemctl start cockpit
systemctl enable cockpit
echo "$((RANDOM % 60)) $((RANDOM % 24)) * * $((RANDOM % 7)) root yum -y upgrade; yum -y update" >> /etc/crontab