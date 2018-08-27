#!/bin/bash

if [ "$( cat /etc/redhat-release | awk {'print $1'} )" = "CentOS" ]
then	
	yum install epel-release -y
else
	echo " Your Operating System must be CentOS "
fi

read -p " Your Choice : " choice
case $choice in 
	"webserver") 
		echo " Install(i) or Uninstall(u) ; "
		read input
		if [ "$input" = "i" ]
		then
			yum install httpd -y
			systemctl start httpd
			systemctl enable httpd
		elif [ "$input" = "u" ]
		then 
			systemctl stop httpd
			yum remove httpd -y 
		else 
			echo " Wrong Input "
		fi
		;;
		*) echo " Error " 
			exit 2
esac
