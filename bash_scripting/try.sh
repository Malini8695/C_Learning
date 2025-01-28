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

# Function to center text on the screen
center_text() {
    local text="$1"
    local screen_width=$(tput cols)
    local length=${#text}
    local padding=$(( (screen_width - length) / 2 ))
    printf "%${padding}s%s\n" "" "$text"
}

# Special Character "Happy Birthday" Logo
special_char_logo() {
    echo -e "\
  H   H   AAAAA  PPPP   PPPP   Y   Y      BBBBB  III  RRRR   TTTTT  H   H  DDDD   AAAAA  Y   Y\n\
  H   H  A     A P   P  P   P   Y   Y      B   B   I   R   R    T    H   H  D   D  A     A  Y   Y\n\
  HHHHH  AAAAAAA PPPP   PPPP    YYY       BBBBB   I   RRRR     T    HHHHH  D   D  AAAAAAA   YYY\n\
  H   H  A     A P      P        Y        B   B   I   R  R     T    H   H  D   D  A     A    Y\n\
  H   H  A     A P      P        Y        B   B  III  R   R    T    H   H  DDDD   A     A    Y"
}

# Function to show a spinning loading animation
spinning_loader() {
    local spinner=("|" "/" "-" "\\")
    local count=0
    local delay=0.1
    local max_count=20

    # Get terminal dimensions (width and height)
    local screen_width=$(tput cols)
    local screen_height=$(tput lines)

    # Calculate the center of the terminal
    local center_x=$((screen_width / 2))
    local center_y=$((screen_height / 2))

    # Show spinner in the center of the screen
    while (( count < max_count )); do
        tput cup $center_y $center_x
        echo -n "${spinner[$((count % 4))]} Loading..."
        sleep $delay
        tput cup $center_y $center_x
        echo -n "              "  # Clear the spinner
        ((count++))
    done
}

# Function to display birthday balloons and stars with random colors
birthday_balloons() {
    local balloon="*"
    local star="#"
    local max_balloons=5
    local max_stars=10

    # Print balloons
    for ((i=0; i<$max_balloons; i++)); do
        set_color $((RANDOM % 7 + 1))  # Random color
        tput cup $((RANDOM % 5 + 8)) $((RANDOM % 60))  # Random position (to not overlap with logo/text)
        echo -n "$balloon"
        reset_color
    done

    # Print stars
    for ((i=0; i<$max_stars; i++)); do
        set_color $((RANDOM % 7 + 1))  # Random color
        tput cup $((RANDOM % 5 + 13)) $((RANDOM % 60))  # Random position
        echo -n "$star"
        reset_color
    done
}

# Function to simulate falling random emojis as confetti
confetti_effect() {
    local emojis=("🎉" "🎂" "🎈" "🎁" "🌟" "✨" "🎶" "🍰" "🎊" "🌈" "💖" "🥳" "🎤")
    local max_confetti=50
    local screen_height=20
    local screen_width=60

    # To make it fall smoothly
    for ((i=0; i<$max_confetti; i++)); do
        local random_emoji=${emojis[$((RANDOM % ${#emojis[@]}))]}  # Pick a random emoji
        local x_pos=$((RANDOM % screen_width))  # Random horizontal position
        local y_pos=$((RANDOM % screen_height + 15))  # Start falling below text

        set_color $((RANDOM % 7 + 1))  # Random color for each emoji
        tput cup $y_pos $x_pos  # Set the cursor position to fall the emoji
        echo -n "$random_emoji"
        reset_color

        # Simulate the falling motion by moving the emoji downwards in the next iteration
        sleep 0.05
    done
}

# Clear the screen and start the animation
clear

# Show loading spinner for the first part
spinning_loader

# Clear the screen after loading
clear

# Print the special character "Happy Birthday" logo
set_color 2  # Green for the logo
special_char_logo
reset_color

# Add a short delay to let the logo show
sleep 2

# First part: typing "Happy Birthday!" in a colorful way
set_color 2  # Green for the first message
center_text "H...A...P...P...Y...  B...I...R...T...H...D...A...Y...!!!"
reset_color

# Add some colorful balloons and stars in the background
birthday_balloons

# Second part: typing "Wishing you a wonderful year!" with color
set_color 4  # Blue for the second message
center_text "Wishing you a wonderful year ahead!"
reset_color

# Add more colorful balloons for fun!
birthday_balloons

# Confetti effect after the second message
confetti_effect

# Final message with a colorful text 🎉
set_color 6  # Cyan for the final message
center_text "May all your dreams come true! 🎉🎈"
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
    center_text "$wish"
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

