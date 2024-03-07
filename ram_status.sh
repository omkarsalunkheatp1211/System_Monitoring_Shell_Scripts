#!/bin/bash

#free RAM
FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=1000
# Send user information via email
TO="YourEmailAddress@Email.com"

# Get current date and time
CURRENT_DATE_TIME=$(date +"%d-%m-%Y %I:%M:%S %p")


if [[ $FREE_SPACE -lt $TH ]]
then
	echo "WARNING, RAM is running low - $FREE_SPACE M"
        echo -e "WARNING, RAM is running low - $FREE_SPACE M" | mail -s "RAM ALERT!" "${TO}"
else
	echo "RAM Space is Sufficient - $FREE_SPACE M"
        echo "RAM Space is Sufficient - $FREE_SPACE M" | mail -s "RAM STATUS!" "${TO}"
fi
