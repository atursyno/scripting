#!/bin/bash

#This script installs apache,starts it and grabs my droplets IP.

# 1 - Check if apache package is available:
# if yes, print "Apache already installed."
# if no, run installation with yum

check_apache_package=sudo yum list installed httpd | grep -i httpd | awk '{print $1}'
echo $check_apache_package

if [ $? == 0 ]; then 
   echo "Apache already installed."
elif [ $? == 1 ]; then 
   echo "run installation with yum"
   yum install httpd -y
fi 


# 2 - Check if apache is running: 
# if yes, print "Apache is already running."
# if no, start apache

check_if_apache_is_managing=$(ps -ef | grep -i "httpd\|apache")
echo $check_if_apache_is_managing
if [ "$check_if_apache_is_managing true" ]; then 
    echo "Apache is already runnning."
elif [ "$check_if_apache_is_managing false" ]; then 
    echo "start apache"
    systemctl start httpd

fi 

# # 3 - Check if apache is enabled: 
# # if yes, print "Apache is already enabled."
# # if no, enable apache

check_apache_status=$(systemctl status httpd | grep Active: | awk '{print $2}')

if [ "$check_apache_status true" ]; then 
   echo "Apache is already enabled."
elif [ "$check_apache_status false" ]; then 
   echo "enable apache"

fi 