#!/bin/bash

while true
do

read -p " My Shell; " input
case $input in 
	"sysinfo" ) uname -a
		;;
	"showmem" ) free -h 
		;;
		* ) eval $input

esac
done
