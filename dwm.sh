#!/bin/bash

batt=$(acpi -b | awk '{ print $4 }' | sed 's/,//')
date=$(date +"%D")
hour=$(date +"%R")
mem=$(free -h  | grep Mem | awk '{ print $NF }')

xsetroot -name " :$mem | :$batt | $date | $hour "
