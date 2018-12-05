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

if [[ initialSelection == 1 ]]
then 
	echo "Intial CentOS Setup"
fi

elif [[ initialSelection == 2 ]]
	then
		echo "Join CentOS to Active Directory"
	fi

else
	then
		echo "No selection was made. You can try again by reissuing the initial command"
	fi
	
