#!bin/bash 
 if [ $(whoami) = root ]
then			
				echo " This is the first thing to do before you do anything ! "
				yum update -y
				yum install epel-release -y
else    
				echo " Please Login with root"
				exit
fi

if [ $(getenforce) = Enforcing ]
then	
	echo "SELINUX is in Enforcing Mode"
elif [ $(getenforce) = Permissive ]
then	
	setenforce 1
	echo "SELINUX is in Permissive Mode but now changed to Enforcing Mode "
else 
	setenforce 1
	echo "SELINUX is in Disable mode but now changed to Enforcing Mode"
fi

while true
do
echo " Choose your progress "
echo " 1.HTTP Web Server"
echo " 2.PHP "
echo " 3.Mariadb MySQL  "
echo " 4.Firewall "
echo " 5.Anti-Virus"
echo " 6.Reboot"
echo " 7.Exit"
read -p "Please Choose;" input

case $input in 
			1)  yum install httpd -y
				systemctl start httpd
				systemctl enable httpd
			;;
			2) yum install php php-mysql php-mbstring php-mcrypt php-pspell php-gd -y
				systemctl restart httpd 
				echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
			;;
			3) yum install mariabd mariadb-server -y
				systemctl enable mariadb 
				systemctl enable mariadb 
				mysql_secure_installation
			;;
			4) yum install firewalld -y 
				systemctl start firewalld
				systemctl enable firewalld
				firewall-cmd --zone=public --add-service=http --permanent
				firewall-cmd --zone=public --add-port=80/tcp --permanent
				firewall-cmd --zone=public --add-port=10000/tcp --permanent
				firewall-cmd --reload
			;;
			5) yum install clamav clamav-update clamav-scanner -y
				sed -i 's/Example/#Example/' /etc/freshclam.conf
				freshclam
				clamscan -ir /var/www/html/
			;;
			6) reboot
			;;
			7) exit
			;;
			*) echo " Please enter your Input correctly"
			
esac
done 
