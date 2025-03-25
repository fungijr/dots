#!/bin/bash

# Define colors
TITLE_COLOR="\033[38;2;255;141;128m"   # #FF8D80 (for titles)
VALUE_COLOR="\033[38;2;163;81;214m"    # #A351D6 (for values)
RESET_COLOR="\033[0m"                  # Reset color to default

# Location (use the location code or city name as needed)
LOCATION="98584"

# Run the loop indefinitely to fetch the weather every 30 minutes
while true; do
    # Clear the terminal screen
    clear

    # Fetch the weather for the specified location and remove the unwanted line
    WEATHER=$(curl -s "wttr.in/$LOCATION?0u" | grep -v "Weather report: 98584")

    # Print the current weather information with colors
    echo -e "${VALUE_COLOR}$WEATHER${RESET_COLOR}"

    # Wait before the next update (30 minutes)
    sleep 1800
done

