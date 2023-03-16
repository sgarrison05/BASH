#!/bin/bash
#Created by Shon Garrison
#March 15, 2023
#Purpose: Compliment to simple bash menu script I wrote

# Declare variables
exitstatus=$?

# Declare functions
myrun () {
    result=$(whiptail --title "BASH menu" --menu "Choose an option" 25 78 16 \
        "update"        "run an update" \
        "clean"         "clean Apt" \
        "simple timer"  "Timer < 1 min" \
        "adv timer"     "Timer > 1 min" \
        "calendar"      "simple calendar" \
        "<--Back"       "return to shell" \
        3>&1 1>&2 2>&3) 

    if [ -z "$result" ]; then
        echo "No options was selected (User Hit Cancel)"
    else
        case "$result" in
            "update") updating
                ;;
            "clean") cleaning 
                ;;
            "simple timer") timers
                ;;
            "adv timer") timera
                ;;
            "calendar") calendar
                ;;
            "<--Back") exit 0
                ;;
            *) echo "Unsupported Item $result!" >&2
                exit 1
                ;;
        esac
    fi
}

mystatus () {
    if [ $exitstatus -eq 0 ]; then
        echo "Operation Success" || \
        echo "Failed to Complete Operation"
    else
        echo "User Chose To Exit"
    fi
}

updating () {
    sudo nala update && sudo nala upgrade
    mystatus
}

cleaning () {
    sudo apt clean && sudo apt autoclean && sudo apt autoremove
    mystatus
}

timers () {
    countdown
    mystatus
    }

timera () {
    adv_countdown
    mystatus
    }


calendar() {
    cal
    mystatus
   }

# Program Start
myrun
