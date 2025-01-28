#!/bin/bash

# Spinning wheel animation
spinner() {
    local spin_chars="|/-\\"
    local i=0
    
    while true; do
        echo -ne "\r${spin_chars:$i:1} Loading..."
        ((i++))
        i=$((i % 4))
        sleep 0.1
    done
}

# Call the spinner function
spinner

