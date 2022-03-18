#!/bin/sh

while true; echo "$(df -h | grep /dev/ | grep -v -e shm -e tmp | awk '{ print $6": "$4; }' | sed ':a;N;$!ba;s/\n/ /g; s/\/dev\///g; s/mapper\///g') │ \
Free: $(free -m | grep Mem | awk '{ print $7; }')Mb │ \
$(date -Iminutes | cut -d'+' -f1-1 | sed 's/T/ /') "; do sleep 10;  done 

# Vol: $(pulsemixer --get-volume | cut -d " " -f 1) | \
