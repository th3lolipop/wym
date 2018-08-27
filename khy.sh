#!/bin/bash
if [ $( id | awk -F '(' {'print $1'} | awk -F '=' {'print $2'} ) = 0  ]
then
	echo "Hi = Mingalarpar"
	echo "kernel = Kernel version"
	echo "about = ShellVersion"
	echo "update = system update"
	echo "epel = epel install"
	echo "selinux = Enforcing"
	echo "exit = exit"
 while true
  do
	read -p "khy >> " input 
  case $input in
	"Hi") 
		echo "Mingalarpar"
;;
	"kernel")
		echo "Kernel version is : " $(uname -r)
;;
	"about")
		echo "ShellVersion is 11"
;;
	"update")
		if [ "$input" = "update" ]
		then
		yum update -y
		fi
;;
	"epel") 
		if [ $( cat /etc/redhat-release | awk {'print $1'} ) = CentOS ]
		then
			echo "Your OS is CentOS"
			yum install epel-release -y
		else
			echo "Your OS is not CentOS"
                fi
;;
	"selinux") 
		if [ "$getenforce" = "enforcing" ]
		then
		setenforce 1
		echo "you are now enforcing"
		else
		setenforce 1
		echo "Enforcing"
		fi
;;
	"exit") exit
;;
	*) eval $input 2> /dev/null
esac
done
else

	echo "you cannot access"
fi	

