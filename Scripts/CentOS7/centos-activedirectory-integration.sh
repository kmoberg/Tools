navn=$HOSTNAME;
navn2="ldap-test";


if [[ $navn == $navn2 ]]
then
        echo "Hostname is invalid. Please enter a new hostname:"
        read navn;

        echo $navn;
fi
