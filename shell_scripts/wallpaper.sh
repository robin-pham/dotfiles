#!/bin/bash

shopt -s nullglob
cd ~/wallpapers

while true; do
	files=()
	for i in *.jpg *.png; do
		[[ -f $i ]] && files+=("$i")
	done
	range=${#files[@]}

	((range)) && feh --bg-max "${files[RANDOM % range]}"

	sleep 15m
done
