#!/bin/bash

STARTER_DIR="/home/pi/starter"

cd $STARTER_DIR
./start_monitor.sh &
./start_app.sh

