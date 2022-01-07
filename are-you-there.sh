#!/bin/bash

solve() {
    # add your solution here
    if [ -e "$1" -a -s "$1" ]; then
        echo "File exists and is not empty"
    elif [ -e "$1" ]; then
        echo "File exists but is empty"
    else
        echo "File does not exist"
    fi
}
