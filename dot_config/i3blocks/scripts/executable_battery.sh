#!/bin/bash

# Check if the system has a battery
if [ -d "/sys/class/power_supply/BAT0" ]; then
    # Get battery status (Charging, Discharging, Full)
    status=$(cat /sys/class/power_supply/BAT0/status)
    # Get battery percentage
    percentage=$(cat /sys/class/power_supply/BAT0/capacity)

    # Output battery status and percentage
    echo "$status $percentage%"
else
    # If no battery is found, output a message
    echo ""
fi

