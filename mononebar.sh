#!/bin/sh
#
#Maintainer: Jorden "McHearty" Gabrys <McHearty at Gmail dot com>

#Date in format Full Year - Month - Day
clock() {
  date '+%Y-%m-%d'
}

#Measure CPU temp's
cputemp() {
  tp1=$(cat /sys/devices/platform/coretemp.0/temp1_input)
  tptrue=$(echo "$tp1/1000" | bc -l)
  printf "$.0f\n" "$tptrue"
}

#Volume (eventually update this to reflect headphones)
volume() {
  amixer get Master | sed -n 'N;s/^.*\[\([0-9]\+%\).*$/\1/p'
}



while :; do
