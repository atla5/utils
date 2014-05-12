#!/bin/bash

#####################################################
# twitch mouse to prevent screen for falling asleep #
#   -AidanSawyer                                    #
#####################################################

while [ true ]; do
  xdotool mousemove_relative -polar 90  15;
  xdotool mousemove_relative -polar 270 15;
  sleep 15
done
