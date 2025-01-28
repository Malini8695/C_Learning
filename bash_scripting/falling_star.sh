#!/bin/bash

# Falling stars animation
falling_stars() {
    local star="*"
    local width=50
    local height=20
    local pos
    while true; do
        clear
        for ((i=0; i<$height; i++)); do
            for ((j=0; j<$width; j++)); do
                # Randomly place a star
                if ((RANDOM % 10 == 0)); then
                    echo -n "$star"
                else
                    echo -n " "
                fi
            done
            echo ""
        done
        sleep 0.1
    done
}

# Call the falling stars function
falling_stars

