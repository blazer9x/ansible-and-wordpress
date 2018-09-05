#!/bin/bash

echo "# This file handled by blog-up.sh scripts, please edit the controller or webservers file in this directory" > hosts/all
cat hosts/controller >> hosts/all
cat hosts/webservers >> hosts/all

echo "Controller CONFIGURE"
ansible-playbook main.yml -i hosts/all --limit controller

echo "Configure Backend Webservers"
ansible-playbook main.yml -i hosts/all --limit webservers

CONTROLLERIP=`cat hosts/all | grep controller | grep -v ] | awk -F"=" '{print $2}' | grep -E -o "([0-9]{1,3}[.]){3}[0-9]{1,3}"`
for x in $CONTROLLERIP; do
 echo "Done! The blog can be accessed at http://$x/";
done
