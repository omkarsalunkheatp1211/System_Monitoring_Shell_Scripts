#!/bin/bash

# Get current date and time
CURRENT_DATE_TIME=$(date +"%d-%m-%Y %I:%M:%S %p")

# Monitoring the free filesystem space disk
# The script checks the available disk space and sends an email alert if it falls below a certain threshold.

# Get the disk usage percentage for the filesystem mounted at /dev/sda1
FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "sda1" | awk '{print $5}' | tr -d %)

# Email recipient
TO="omkarsalunkhe1211@gmail.com"

# Check if disk usage percentage is greater than or equal to 20%
if [[ $FU -ge 80 ]]; then
    # If disk usage is high, send a warning email
    echo "Warning: Disk space is low - $FU%. Current date and time: $CURRENT_DATE_TIME. Please consider freeing up space." | mail -s "DISK SPACE ALERT!" $TO
else
    # If disk usage is below the threshold, notify that everything is okay
    echo "Disk space is sufficient - $FU%. Current date and time: $CURRENT_DATE_TIME. No action required at the moment." | mail -s "DISK SPACE ALERT!" $TO
fi