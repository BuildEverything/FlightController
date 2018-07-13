#!/bin/bash
if [ -n "$1" ]; then
  sleeptime=$1
else
  sleeptime=1
fi

echo Firing for $sleeptime

gpio mode 8 out
gpio write 8 1
sleep $sleeptime
gpio write 8 0

