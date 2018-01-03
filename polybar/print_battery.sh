#!/bin/bash

bat1=$(acpi -b | sed -n '1p' | egrep -o '[0-9]{1,3}%')
bat2=$(acpi -b | sed -n '$p' | egrep -o '[0-9]{1,3}%')
echo " $bat1 |  $bat2"
