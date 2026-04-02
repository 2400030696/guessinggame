#!/bin/bash

# function to count files
count_files() {
    ls -1 | wc -l
}

# main game function
play_game() {

    actual=$(count_files)
    guess=0

    echo "Welcome to Guessing Game!"

    while [[ $guess -ne $actual ]]
    do
        echo "How many files are in this directory?"
        read guess

        if [[ $guess -lt $actual ]]
        then
            echo "Too low! Try again."
        elif [[ $guess -gt $actual ]]
        then
            echo "Too high! Try again."
        else
            echo "Correct! Congratulations!"
        fi
    done
}

play_game
