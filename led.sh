#!/bin/sh

#Activating port 14
echo 14 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio14/direction

#Activating port 15
echo 15 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio15/direction

#Activating port 18
echo 18 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio18/direction

#Setting ports low
echo 0 > /sys/class/gpio/gpio14/value
echo 0 > /sys/class/gpio/gpio15/value
echo 0 > /sys/class/gpio/gpio18/value

while true
  do
    echo 1 > /sys/class/gpio/gpio14/value
    sleep 1
    echo 0 > /sys/class/gpio/gpio14/value
    sleep 1
    echo 1 > /sys/class/gpio/gpio15/value
    sleep 1
    echo 0 > /sys/class/gpio/gpio15/value
    sleep 1
    echo 1 > /sys/class/gpio/gpio18/value
    sleep 1
    echo 0 > /sys/class/gpio/gpio18/value
    sleep 1
  done

