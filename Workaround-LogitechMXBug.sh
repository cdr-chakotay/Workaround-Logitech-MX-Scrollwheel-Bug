#!/bin/ksh
#Searching for logitech options deamon
echo " ********************************* "
echo " "
echo "Workaround-Logitech-MX-Scrollwheel-Bug"
echo " "
echo " ********************************* "
echo " "
var1=`launchctl list | grep -c "com.logitech.manager.daemon"`
varstop=0
varsstart=0
  if [ $var1 -lt 3 ] && [ $var1 -gt 0 ]
  then
    echo "Process found:"
    echo `launchctl list | grep "com.logitech.manager.daemon"`
    echo " "
    echo " ---------- Stop Daemon ---------- "
    echo -n "Stopping process"
    sleep 1
    launchctl stop com.logitech.manager.daemon
    if [ $? -eq 0 ]
    then
      echo " --- OKAY"
      varstop=1
    else
      echo " --- ERROR DETECTED"
      echo " "
    fi
    echo " "
    echo " ---------- Start Daemon ---------- "
    echo -n "Attempt to restart process"
    sleep 1
    launchctl start com.logitech.manager.daemon
    if [ $? -eq 0 ]
    then
      echo " --- OKAY"
      echo " "
      varsstart=1
    else
      echo " --- ERROR DETECTED"
      echo " "
      sleep 3
      exit 1
    fi
#Result of Operations
echo "---------- Result: ----------"
echo "Process State"
echo `launchctl list | grep "com.logitech.manager.daemon"`
echo " "
  if [ $varstop -eq 1 ] && [ $varsstart -eq 1 ]
  then
    echo "Completed without errors"
  else
    echo "An error occurred"
  fi
sleep 4
exit 0

else
echo " --- ERROR DETECTED"
echo " "
echo " ....... "
sleep 3
exit 1
fi
