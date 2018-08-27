#!/bin/bash

read -p "Enter your username : " user
read -s -p "Enter your password : " pass

if [ $user = "root" ] && [ $pass = "redhat" ]
then
	echo " "
	echo "*** Authentication Success ***"
else
        echo " "	
	echo "*** Authentication Fail ***"
fi
