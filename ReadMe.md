# Useful SysAdmin Scripts

A list of scripts I've created to simplify life as a sysadmin in a small- to medium enterprise environment.

## Getting Started

Run the command on the operating system in question to execute the ocmmand. 



## CentOS7
Scripts for CentOS 7. These may work on other RHEL distros, but have not been tested.



### Joining CentOS to Active Directory
This script will install the prerequisites for CentOS to join a Windows Active Directory Domain. 

```
bash -c "$(curl -s https://raw.githubusercontent.com/kmoberg/UsefulSysadminScripts/master/Scripts/CentOS7/centos-activedirectory-integration.sh)"; 
```



