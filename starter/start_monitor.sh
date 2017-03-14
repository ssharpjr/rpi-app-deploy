#!/bin/bash

APP="app.py"
MONITOR="/home/pi/monitor/monitor_app.py"
MONITOR_REBOOT="/home/pi/monitor/monitor_reboot.py"

# Let Initial State know the RPI is on.
python3 $MONITOR_REBOOT

# Give the app time to start
sleep 5

VAR=`pgrep -f "$APP"`
echo "Starting App Monitor"
echo $VAR
python3 $MONITOR $VAR
