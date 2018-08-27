#!/bin/bash

if [ $( id | awk -F '(' {'print $1'} | awk -F '=' {'print $2'} ) = 0 ]
then
	echo " hello world "
else
	echo " Bye2 "
	exit
fi
