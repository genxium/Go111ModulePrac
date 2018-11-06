#!/bin/bash

if [ $# -ne 1 ]; then 
  echo "Usage: $0 [TEST|PROD]"
  exit 1
fi

basedir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

OS_USER=$USER
ServerEnv=$1
LOG_PATH=$basedir/go-module-prac.log # Use "/var/log/go-module-prac.log" and `logrotate` for an actual PROD environment on a Linux server.

# Make sure that the following "PidFile" is "git ignored".
PID_FILE="$basedir/go-module-prac.pid"

sudo touch $LOG_PATH 
#sudo chown $OS_USER:$OS_USER $LOG_PATH 
sudo chown $OS_USER $LOG_PATH  

ServerEnv=$ServerEnv $basedir/server >$LOG_PATH 2>&1 &
echo $! > $PID_FILE
