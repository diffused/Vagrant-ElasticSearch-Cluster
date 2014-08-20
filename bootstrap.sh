#!/bin/bash

PROVISIONED="/etc/vagrant_provisioned"
echo "checking if vm is provisioned"
if [ ! -e $PROVISIONED ]; then
	echo "updating apt"
	sudo apt-get update -y
	sudo apt-get install curl python-software-properties -y
	sudo $1
else 
	echo "already provisioned"
fi