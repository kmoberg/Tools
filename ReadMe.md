# Useful SysAdmin Scripts

A list of scripts I've created to simplify life as a sysadmin in a small- to medium enterprise environment.

## Getting Started

Run the command on the operating system in question to execute the ocmmand. 



## CentOS7
Scripts for CentOS 7. These may work on other RHEL distros, but have not been tested.

### Setup Menu
This script functions as a menu an a quick way to navigate between the other scripts with only a single command. 
```
bash -c "$(curl -s https://raw.githubusercontent.com/kmoberg/UsefulSysadminScripts/master/Scripts/CentOS7/setup-menu.sh)"; 
```


### First Setup
The first very basic setup of CentOS7, this script sets a new hostname, installs some useful tools: wget, vim, nano and cockpit among others, enables cockpit and creates a firewall exception, then adds yum update to crontab to run once a week. Additionally, the script adds some useful information to the /etc/issue file - the logon screen for users who login to the console. This is only shown on the console, and not via SSH or any remote-access. For sensitive information or some production environments this should be removed for security reasons. 

```
bash -c "$(curl -s https://raw.githubusercontent.com/kmoberg/UsefulSysadminScripts/master/Scripts/CentOS7/first-configuration.sh)"; 
```


### Joining CentOS to Active Directory
This script will install the prerequisites for CentOS to join a Windows Active Directory Domain. 
The script will first install the prerequisits for LDAP and Active Directory, then prompt for domain-admin credentials and the domain name. Once joined, the script modifies the sssd.conf and sshd_config files to accept traffic from only domain users in the "linux-user" or "linux admin" AD groups over SSH and finally adds the "linux admin" group to sudoers.

```
bash -c "$(curl -s https://raw.githubusercontent.com/kmoberg/UsefulSysadminScripts/master/Scripts/CentOS7/centos-activedirectory-integration.sh)"; 
```



