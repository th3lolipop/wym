#!/bin/bash

while true
do
echo "webserver = HTTPD Package"
	read -p " Package Name ; " pack
	case $pack in 
		"webserver") yum install httpd -y
			     systemctl start httpd
			     systemctl enable httpd

	esac

done
