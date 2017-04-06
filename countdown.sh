#!/bin/bash

clear

let resp=0
echo "Time?(in seconds)"
read resp

clear

let num=$resp

while [ $num -gt 0 ];

do
    echo "Counting down from: $resp seconds"
    echo 
    echo $num
    sleep 1
    let num=$num-1 #can also be "num-=1"
    clear

done

echo "Timer Done!"
echo
