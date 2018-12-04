echo "This script will join the Linux machine to an existing Active Directory. The script will make modifications to sssd.conf and sshd.conf, as well as add the group \"Linux Admin\" to sudoers. If this is OK, please type yes:"
read accept

if [[ $accept == "yes" ]] || [[ $accept == "y" ]]
then
	
	currentHostname=$HOSTNAME
	checkName="localhost"
	
	if [[ $currentHostname == $checkName ]]
	then
	        echo "Hostname cannot be localhost. Please enter a new hostname:"
	        read newHostname;

	        hostnamectl set-hostname $newHostname;
	fi

	yum install sssd realmd oddjob oddjob-mkhomedir adcli samba-common samba-common-tools krb5-workstation openldap-clients policycoreutils-python -y
	realm list

	echo "Enter domain admin credentials"
	read domainUser

	echo "Enter domain name"
	read domainName

	echo "realm join --user=$domainUser $domainName"
	realm join --user=$domainUser $domainName

	sed -i 's/services = nss, pam/services = nss, pam, ssh/g' /etc/sssd/sssd.conf
	sed -i 's/use_fully_qualified_names = True/use_fully_qualified_names = false/g' /etc/sssd/sssd.conf
	sed -i 's/%u@%d/%u/g' /etc/sssd/sssd.conf
	echo "#Active Directory Integration" >> /etc/ssh/sshd_config
	echo "AllowGroups Linux\ Admin linux-user" >> /etc/ssh/sshd_config
	echo "%Linux\ Admin 	ALL=(ALL)	ALL" > /etc/sudoers.d/"Linux Admin"



fi