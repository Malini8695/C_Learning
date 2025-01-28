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

    # Print balloons
    for ((i=0; i<$max_balloons; i++)); do
        set_color $((RANDOM % 7 + 1))  # Random color
        tput cup $((RANDOM % 5 + 2)) $((RANDOM % 60))  # Random position
        echo -n "$balloon"
        reset_color
    done

    # Print stars
    for ((i=0; i<$max_stars; i++)); do
        set_color $((RANDOM % 7 + 1))  # Random color
        tput cup $((RANDOM % 5 + 7)) $((RANDOM % 60))  # Random position
        echo -n "$star"
        reset_color
    done
}

# Function to simulate falling random emojis as confetti
confetti_effect() {
    local emojis=("🎉" "🎈" "💥" "✨" "🌟" "🍀" "🎊" "🌈" "🎵" "💫")
    local max_confetti=50

    for ((i=0; i<$max_confetti; i++)); do
        local random_emoji=${emojis[$((RANDOM % ${#emojis[@]}))]}  # Pick a random emoji
        set_color $((RANDOM % 7 + 1))  # Random color
        tput cup $((RANDOM % 20 + 5)) $((RANDOM % 60))  # Falling confetti
        echo -n "$random_emoji"
        reset_color
        sleep 0.05
    done
}

# Clear the screen and start the animation
clear

# First part: typing "Happy Birthday!" in a colorful way
set_color 2  # Green for the first message
tput cup 3 20  # Centered position on the screen
typing_effect "H...A...P...P...Y...  B...I...R...T...H...D...A...Y...!!!"
reset_color

# Add some colorful balloons and stars in the background
birthday_balloons

# Second part: typing "Wishing you a wonderful year!" with color
set_color 4  # Blue for the second message
tput cup 5 20  # Centered position on the screen
typing_effect "Wishing you a wonderful year ahead!"
reset_color

# Add more colorful balloons for fun!
birthday_balloons

# Confetti effect after the second message
confetti_effect

# Final message with a colorful text 🎉
set_color 6  # Cyan for the final message
tput cup 8 20  # Centered position on the screen
typing_effect "May all your dreams come true! 🎉🎈"
reset_color

# Different wishes for the final part
wishes=(
    "Wishing you all the happiness in the world! 🎉"
    "May your year be filled with love and laughter! 💖"
    "Cheers to another year of adventures and memories! 🥂"
    "May all your dreams come true this year! ✨"
    "Enjoy every moment of your special day! 🎈"
    "Here's to health, happiness, and success in the year ahead! 🏆"
)

# Displaying the different wishes in a colorful way, centered
for wish in "${wishes[@]}"; do
    set_color $((RANDOM % 6 + 1))  # Random color for each wish
    tput cup $((10 + $RANDOM % 5)) 20  # Random row but centered
    typing_effect "$wish"
    reset_color
    sleep 1
done

# Let the user enjoy the final wishes
sleep 2
clear

# Optional sound effect (works on systems with `paplay` or similar)
# Uncomment the next line if you want to play a sound (ensure you have a sound file on your system)
# paplay /path/to/your/birthday-song.wav

# End the animation
tput cup 15 20  # Centered position
echo "🎉🎈 Happy Birthday! 🎈🎉"

