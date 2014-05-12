#!/bin/bash

###################################
# simple count-up timer (for now) #
#   -AidanSawyer                  #
###################################

#initialize time variables
hour=0
min=0
sec=0

while true; do 
  
  #increment min every 60s
  if [ "$sec" -ge "60" ]; then
    min=$(($min+1));
    sec=$(($sec-60));
  fi

  #increment hours every 60m
  if [ "$min" -ge "60" ]; then
    hour=$(($hour+1));
    min=$(($min-60));
  fi

  #print, sleep, increment
  clear
  echo "$hour:$min:$sec"
  sleep 1
  sec=$(($sec+1));

done

##### @ToDo ######
# -accept argument for time (countDown)
# -flag for countUp/Down
# -set visual/audio alarm/notifcations
# -man page
