#!/bin/bash

exec &>> /var/log/monit_nginx.log

echo "#############################################"
date


if [ -f /run/nginx.pid ]
then 
	echo "Nginx is Running"
else
	echo "Nginx is not Running!!!!"
	echo "Starting the Nginx"
	systemctl start nginx
	if [ $? -eq 0 ]
	then 
		echo "Process started successfully"
	else 
		echo "Process starting Failed, contact admain"

	fi
fi

echo "#############################################"
