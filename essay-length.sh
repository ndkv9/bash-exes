#!/bin/bash

solve() {
    # add your solution here
    if [ $1 -ge 500 -a $1 -le 1000 ]; then
        echo "Good job!"
    else
        echo "Revise the essay"
    fi
}
solve $@

