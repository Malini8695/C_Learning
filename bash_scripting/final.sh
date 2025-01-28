#!/bin/bash

# Function to set color and reset after the text
set_color() {
    local color="$1"
    tput setaf $color   # Set text color
}

reset_color() {
    tput sgr0           # Reset color
}

# Function to simulate typing effect
typing_effect() {
    local text="$1"
    for ((i=0; i<${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep 0.1
    done
    echo ""
}

# Function to display birthday balloons and stars with random colors
birthday_balloons() {
    local balloon="🎈"
    local star="⭐"
    local max_balloons=5
    local max_stars=10

    echo -e "\n"

    # Print balloons
    for ((i=0; i<$max_balloons; i++)); do
        set_color $((RANDOM % 7 + 1))  # Random color
        tput cup $((RANDOM % 5)) $((RANDOM % 60))
        echo -n "$balloon"
        reset_color
    done

    # Print stars
    for ((i=0; i<$max_stars; i++)); do
        set_color $((RANDOM % 7 + 1))  # Random color
        tput cup $((RANDOM % 5 + 5)) $((RANDOM % 60))
        echo -n "$star"
        reset_color
    done
    echo -e "\n"
}

# Main Birthday Animation
clear

# First part: typing "Happy Birthday!" in a colorful way
set_color 2  # Green for the first message
typing_effect "H...A...P...P...Y...  B...I...R...T...H...D...A...Y...!!!"
reset_color

# Add some colorful balloons and stars in the background
birthday_balloons

# Second part: typing "Wishing you a wonderful year!" with color
set_color 4  # Blue for the second message
typing_effect "Wishing you a wonderful year ahead!"
reset_color

# Add more colorful balloons for fun!
birthday_balloons

# Final message with a colorful cake 🎂
set_color 6  # Cyan for the final message
typing_effect "May all your dreams come true! 🎉🎂"
reset_color

# Let it sit for a while so the user can enjoy
sleep 2

