#!/bin/bash

# Glitchy text animation
glitchy_text() {
    local text="$1"
    local length=${#text}
    local i
    local random_char
    local output=""
    
    for ((i=0; i<$length; i++)); do
        random_char=$(printf \\$(printf '%03o' $((RANDOM%26+97))))
        output+="$random_char"
    done
    
    echo -n "$output"
    sleep 0.1
    
    for ((i=0; i<$length; i++)); do
        output="${output:0:i}${text:i:1}${output:i+1}"
        echo -ne "\r$output"
        sleep 0.1
    done
    
    echo ""
}

# Run the glitchy text animation
glitchy_text "Hello, this is a glitchy text animation!"

