#!bin/bash

while true
do
echo " 1.HTTP"
echo " 2.MariaDB"
echo " 3.MySQL"

read -p " Please Choose;" input
case $input in
	1) echo "Installed"
	;;
	2) echo "Blah"
	;;
	3) echo "Blue"
	;;
	*) echo "Enter"
	
esac 
done
