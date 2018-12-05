tput setaf 1; echo "
############################################################
# Welcome to initial CentOS 7 Installation. This setup has #
# only been tested on CentOS, and is released with         #
# absolutely no warranty. Use at own risk!                 #
############################################################

"; tput sgr0

tput setaf 2; echo "
############################################################
# To begin, select what you want to do:                    #
# 1. Initial CentOS Setup.                                 #
# 2. Join CentOS to Active Directory                       #
#                                                          #
############################################################


"; tput sgr0

read initialSelection

if [ $initialSelection == 1 ]
then 
	tput setaf 3; echo "
##########################################
# This command will set hostname and     #
# install useful tools. Refer to GitHub  #
# for more information. Press CTRL+C to  #
# cancel. This script will start soon.	 #
##########################################"; tput sgr0

		sleep 10

		bash -c "$(curl -s https://raw.githubusercontent.com/kmoberg/UsefulSysadminScripts/master/Scripts/CentOS7/first-configuration.sh)"; 


elif [ $initialSelection == 2 ]
	then

	tput setaf 3; echo "
##########################################
# This command will set connect CentOS   #
# to a Windows Active Directory domain.  #
# It will download the required tools,   #
# verify that a correct hostname is set  #
# before joining the domain. After the   #
# server is connected, it will modify    #
# SSSD and SSHD to only allow AD access  #
# over SSH. Refer to GitHub for more     #
# information.                           #
#                                        #
# This script will automatically start   #
# in 10 seconds. Press CTRL+C to stop!   #
##########################################"; tput sgr0

		sleep 10

		bash -c "$(curl -s https://raw.githubusercontent.com/kmoberg/UsefulSysadminScripts/master/Scripts/CentOS7/centos-activedirectory-integration.sh)"; 




else
		echo "No selection was made. You can try again by reissuing the initial command"
	fi

