#!/bin/bash

if [ $( id | awk -F '(' {'print $1'} | awk -F '=' {'print $2'} ) = 0 ]
then 
  echo  " +=============================+"
  echo  " | about = Shell version       |"
  echo  " | kernel= Kernel version      |"
  echo  " | date=Date                   |"
  echo  " | update = System update      |"       
  echo  " | epel = EPEL install         |"         
  echo  " | Hi = Mingalar Bar           |"            
  echo  " | selinux = SetEnforcing mode |" 
  echo  " | exit = Exit from Shell      |"       
  echo  " +=============================+"
  echo "        "
  echo " ^* Welcome from  MYSHELL *^ "
 # sleep 1

while true
do
echo -n "MyShell>> " & read input
     case $input in
       "about") echo " Shell version is 2.5 "
           ;; 
       "kernel") echo "Kernel version is" $(uname -r)
           ;;
       "date") date
           ;;
       "update") yum update -y
           ;;
       "epel")
           if [ "$(cat /etc/redhat-release | awk '{print $1}')" = "CentOS" ]
           then
           yum install epel-release -y
           else
           echo "Update CentOS only"
           fi
          # echo "EPEL installation complete!"
           ;;
       "Hi") echo "Mingalar bar"
           ;;
       "selinux") if [ "$(getenforce)" = "Enforcing" ]
                then
                #setenforce 1
                echo "Selinx is in Already Enforcing mode"
                else 
                setenforce 1
                echo "Selinux is in enforcing mode"
                fi
           ;;
"exit" ) exit
;;
*) eval $input 2> /dev/null
esac
done
else
echo "You cannot access"
fi  
