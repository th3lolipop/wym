#!bin/bash

if [ $(getenforce) = Enforcing ]
then	
	echo "SELINUX is in Enforcing Mode"
elif [ $(getenforce) = Permissive ]
then	
	echo "SELINUX is in Permissive Mode"
else 
	setenforce=1
	echo "SELINUX is in Disable mode but now changed to Enforcing Mode"
fi
	
