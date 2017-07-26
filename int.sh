#!bin/bash

echo " Please Input some number"
read number 
if [ $number -ge 15 ] 
then 
	echo " Greater than or equal 15"
else
	echo " Less than 15"
fi
