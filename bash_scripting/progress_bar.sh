#!/bin/bash

# Function to display a progress bar
progress_bar() {
    local total=$1
    local current=0
    local bar=""
    
    while [ $current -le $total ]; do
        bar="["
        for ((i = 0; i < $total; i++)); do
            if [ $i -lt $current ]; then
                bar+="#"
            else
                bar+=" "
            fi
        done
        bar+="] $current/$total"
        
        echo -ne "\r$bar"
        sleep 0.1
        ((current++))
    done
    echo -e "\nDone!"
}

# Call the progress bar function with a total of 30
progress_bar 30

