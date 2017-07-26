#!bin/bash 

if [ $(date | awk '{print $2}') != Jul ]

then 
	echo "This is not July"
else
	echo "Happy July"
fi
