#!/bin/bash
	echo "fedora for OS name"
        echo "about for kenel version"
        echo "update for updating packages"
        echo "selinux for enforcing"
        echo "exit for exit"
	echo " Hi for  Mingalabar "

while [ $( id | awk -F '(' {'print $1'} | awk -F '=' {'print $2'} )  = 0 ]
do

	echo -n "thawmi > " & read input
		if [ "$input" = "about" ]
		then
			echo " Your version is $(uname -r) "
		elif [ "$input" = "update" ]  
	        then
			echo "Updating the packages"
			dnf update -y
		elif [ "$input" = "selinux" ]   
		then
			if [ "$(getenforce)" = "enforcing" ]
			then 
				setenforce 1
				echo "Enforcing mode on"
			else
				setenforce 1
				echo "your are now on enforcing mode"
			fi
	        elif [ "$input" = "fedora" ]
		       then     
			       echo " Yours OS name is:  $(cat /etc/*-release | awk {'print $1'})"
		elif [ "$input" = "Hi" ]
	             then
	     			echo "Mingalrbar"		     
	        else
			 eval "$input"
		fi
	done
