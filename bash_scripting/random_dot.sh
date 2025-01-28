#!/bin/bash

# Random dots animation
random_dots() {
    while true; do
        clear
        for i in {1..20}; do
            echo -n "."
            sleep 0.1
        done
        echo
    done
}

# Call the random dots function
random_dots

