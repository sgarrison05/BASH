#!/bin/bash

while [ 1 ];
do
    clear
    date +%b\ %d,\ %Y | figlet -k
    echo "" 
    date +%r | figlet -k
    sleep 1
done

