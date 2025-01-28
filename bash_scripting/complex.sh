#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
RESET='\033[0m'

# Clear the screen
clear

# Function to display the birthday message
display_message() {
    message="🎉 Happy Birthday! 🎉"
    echo -e "${RED}$message${RESET}"
    sleep 1
    echo -e "${GREEN}$message${RESET}"
    sleep 1
    echo -e "${YELLOW}$message${RESET}"
    sleep 1
    echo -e "${MAGENTA}$message${RESET}"
    sleep 1
    echo -e "${CYAN}$message${RESET}"
    sleep 1
    echo -e "${WHITE}$message${RESET}"
}

# Display the message
display_message

