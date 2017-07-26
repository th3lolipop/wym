#!bin/bash

if [ -f /etc/my.cnf]
	then 
		echo "This program is already installed"
	elif	[ -f /etc/mysql/my.cnf ]
		then
		echo "This program is already installed"
			else
				echo "blah blah blah"
fi
