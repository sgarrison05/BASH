#!/bin/bash

clear

let hours=0
let mins=0
let secs=0

echo "Enter Time:"
read -p "Hours? " hours
read -p "Minutes? " mins
read -p "Seconds? " secs

clear

while [ $hours -ge 0 ]; do
    while [ $mins -ge 0 ]; do
        while [ $secs -ge 0 ]; do
            echo -ne "$hours hours $mins minutes $secs seconds\033[0K\r"
            let secs-=1
            sleep 1
        done
        secs=59
        let mins-=1
    done
    mins=59
    let hours-=1
done
clear
echo "Timer Done!"

