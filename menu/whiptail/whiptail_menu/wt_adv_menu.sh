#!/bin/bash
#Created by Shon Garrison
#March 15, 2023
#Purpose: Compliment to simple bash menu script I wrote

choice=$(whiptail --title "BASH menu" --menu "Choose an option" 25 78 16 \
    "1" "Run an Update" \
    "2" "Clean Apt" \
    "3" "Show a Calendar" \
    "4" "Simple Timer (<1 min)" \
    "5" "Adv Timer (>1 min)" \
    "6" "Calcurse" \
    "7" "htop" \
    "8" "Spreadsheet Calculator (sc)" \
    "9" "Newsboat" \
    "<--Back" "Return to Shell" \
    3>&1 1>&2 2>&3) 

if [ -z "$choice" ]; then
    echo "No option was selected (User Hit Cancel)"
else
    case "$choice" in 
        "1") sudo nala update && sudo nala upgrade
           ;;
        "2") sudo apt clean && sudo apt autoclean && sudo apt autoremove
           ;;
        "3") cal
           ;;
        "4") countdown
           ;;
        "5") adv_countdown
           ;;
        "6") calcurse
           ;;
        "7") htop
           ;;
        "8") sc
           ;;
        "9") newsboat
           ;;
        "<--Back") exit 0
            ;;
        *) echo "Unsupported Item $choice!" >&2
           exit 1
           ;;
    esac
fi

