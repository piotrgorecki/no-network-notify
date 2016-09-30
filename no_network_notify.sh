#!/bin/bash

# Use this script to check if your Internet connection is still working.
# You may run this script into a background (by place ' &' at the end).
#
# usage:
#   $ ./no_network_notify.sh              # by default uses the google.com host
#   $ ./no_network_notify.sh bing.com     # uses the bing.com host
#   $ ./no_network_notify.sh bing.com 20  # uses the bing.com host every 20 sec

host=$1
host="${host:-google.com}"
sleep_time=10

while true; do
  ping -c 3 $host 2>&1 | grep -E " 100% packet loss|unknown host" && notify-send 'NO INTERNET CONNECTION' "unable to ping $host"
  sleep $sleep_time
done
