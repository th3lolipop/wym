#!bin/bash

echo "Choose Servers"
echo " 1 = Apache"
echo " 2 = Maraidb"
read input

case $input in
	1)	yum install httpd -y
	;;
	2)	yum install mariadb mariadb-server -y
	;;
	*)	echo " Go Home ~ U're Drunk"
	;;
esac
