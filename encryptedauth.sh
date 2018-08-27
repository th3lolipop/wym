#!/bin/bash

read -p "Enter your username : " user
read -s -p "Enter your password : " pass

if [ $user = "root" ] && [ $(echo "$pass" | openssl dgst -md5 | awk {'print $2'}) = "bdb52aae3b5566607f3e6023ef2e74e5" ]
then
	echo " "
	echo " *** Authentication Success *** "
	echo " Welcome $user , Enjoy !!! " 
else
	echo " "
	echo " *** Authentication Fail *** "
fi
