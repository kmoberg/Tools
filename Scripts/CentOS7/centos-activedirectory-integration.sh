navn=$HOSTNAME;
navn2="ldap-test";

if [[ $navn == $navn2 ]]
then
        echo "Hostname cannot be localhost. Please enter a new hostname:"
        read navn;

        hostnamectl set-hostname $navn;
fi

yum install sssd realmd oddjob oddjob-mkhomedir adcli samba-common samba-common-tools krb5-workstation openldap-clients policycoreutils-python -y
realm list

echo "Enter domain admin credentials"
read domainUser

echo "Enter domain name"
read domainName

echo "realm join --user=$domainUser $domainName"
realm join --user=$domainUser $domainName

