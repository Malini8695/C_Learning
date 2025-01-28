#!/bin/bash

# Simple Snake game in Bash
snake_game() {
    local snake head body food direction
    local height=20 width=50
    local score=0

    # Initialize game state
    snake=("10 10")
    head="10 10"
    food="15 20"
    direction="RIGHT"

    while true; do
        clear
        # Draw border
        for ((y=0; y<=height; y++)); do
            for ((x=0; x<=width; x++)); do
                if ((y == 0 || y == height || x == 0 || x == width)); then
                    echo -n "#"
                else
                    echo -n " "
                fi
            done
            echo ""
        done
        
        # Draw snake
        for pos in "${snake[@]}"; do
            local x y
            x=$(echo $pos | cut -d' ' -f1)
            y=$(echo $pos | cut -d' ' -f2)
            tput cup $y $x
            echo -n "O"
        done
        
        # Draw food
        local fx fy
        fx=$(echo $food | cut -d' ' -f1)
        fy=$(echo $food | cut -d' ' -f2)
        tput cup $fy $fx
        echo -n "@"

        # Move snake
        local x y
        x=$(echo $head | cut -d' ' -f1)
        y=$(echo $head | cut -d' ' -f2)
        
        if [ "$direction" == "UP" ]; then
            y=$((y - 1))
        elif [ "$direction" == "DOWN" ]; then
            y=$((y + 1))
        elif [ "$direction" == "LEFT" ]; then
            x=$((x - 1))
        elif [ "$direction" == "RIGHT" ]; then
            x=$((x + 1))
        fi
        
        head="$x $y"
        snake=("$head" "${snake[@]:0:${#snake[@]}-1}")
        
        # Collision with food
        if [ "$head" == "$food" ]; then
            score=$((score + 1))
            food="$((RANDOM % width)) $((RANDOM % height))"
            snake+=("$head")
        fi
        
        # Check for game over
        if [ "$x" -le 0 ] || [ "$x" -ge "$width" ] || [ "$y" -le 0 ] || [ "$y" -ge "$height" ]; then
            echo "Game Over! Final Score: $score"
            break
        fi

        sleep 0.1
        read -t 0.1 -n 1 key
        case $key in
            w) direction="UP" ;;
            s) direction="DOWN" ;;
            a) direction="LEFT" ;;
            d) direction="RIGHT" ;;
        esac
    done
}

# Start the snake game
snake_game

