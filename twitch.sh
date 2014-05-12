#!/bin/bash

while [ true ]; do
  xdotool mousemove_relative -polar 90  15;
  xdotool mousemove_relative -polar 270 15;
  sleep 5
done
