#!/bin/bash

clear

let resp=0

echo "Time?(in minutes)"
read resp

clear

let num=$resp

while [ 1 ]; do
    
    let num=$num-1
    clear
    if [ $num -eq -1 ]; then
        break
    fi

    for i in {60..1}

    do 
        echo "Counting down from $resp minutes"
        echo
        echo $num minute\(s\) $i seconds
        sleep 1
        clear 
        if [ $num -eq -1 ]; then
            break
        fi

    done
done
echo Timer Done!
echo 
