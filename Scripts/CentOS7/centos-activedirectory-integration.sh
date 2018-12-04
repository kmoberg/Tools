sed -i 's/services = nss, pam/services = nss, pam, ssh/g' /etc/sssd/sssd.conf.bak
sed -i 's/use_fully_qualitied_names = True/use_fully_qualitied_names = false/g' /etc/sssd/sssd.conf.bak
sed -i 's/%u%d/%u/g' /etc/sssd/sssd.conf.bak
echo "#Active Directory Integration" >> /etc/ssh/sshd_config.bak
echo "AllowGroups Linux\ Admin linux-user" >> /etc/ssh/sshd_config.bak
echo "%Linux\ Admin 	ALL=(ALL)	ALL" > /etc/sudoers.d/"Linux Admin Test"