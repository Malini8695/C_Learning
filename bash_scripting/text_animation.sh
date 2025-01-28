#!/bin/bash

# Function to simulate typing effect
typing_effect() {
    local text="$1"
    for ((i=0; i<${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep 0.1
    done
    echo ""
}

# Example usage
typing_effect "Welcome to the Bash Animation World!"

