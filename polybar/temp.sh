#!/bin/bash

temp=$(acpi -t | sed -n '1p' | egrep -o '[0-9]{2,3}.' | tr -d '.')
echo "$temp°C"
