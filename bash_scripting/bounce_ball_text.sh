#!/bin/bash

# Bouncing ball animation
bouncing_ball() {
    local ball="O"
    local space="      "
    local len=40
    local pos=0
    local direction=1
    
    while true; do
        # Clear the screen
        clear
        
        # Print spaces before the ball to move it
        printf "%-${pos}s%s\n" "$space" "$ball"
        
        # Move the ball left or right
        if [ $direction -eq 1 ]; then
            ((pos++))
        else
            ((pos--))
        fi
        
        # Change direction at the end of the line
        if [ $pos -ge $len ]; then
            direction=-1
        elif [ $pos -le 0 ]; then
            direction=1
        fi
        
        sleep 0.05
    done
}

# Call the bouncing ball function
bouncing_ball

