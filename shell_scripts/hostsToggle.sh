#!/bin/sh
# EASY TOGGLE SCRIPT, CREATES BLANK TOGGLE FILE, REMOVES IF THERE

TOGGLE=~/.toggleHosts

if [ ! -e $TOGGLE ]; then
	touch $TOGGLE
	sudo mv /etc/hosts /etc/hosts.bak
	echo "hostsfile disabled"
else
	rm $TOGGLE
	sudo mv /etc/hosts.bak /etc/hosts
	echo "hostsfile enabled"
fi
