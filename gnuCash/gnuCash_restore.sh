#!/bin/bash
#Created by Shon Garrison
#Aug 1, 2014
#Purpose: Restores the newest gnuCash file to financial directory
#Note: You will have to insert USB Name, ipAddress of your Server, name of your gcash
#gcash file, or account to make this script work.  Keep in mind your directory
#structure for script checks.

clear

while [ 1 ];
do

    if [ -d /media/your_account/USB_Name/gnuCash ]; then

    rm ~/Documents/Financial/gnuCash/yourfile_name.gnucash
    cp /media/your_account/USB_Name/gnuCash/$(ls -t /media/your_account/USB_Name/gnuCash/ | head -1) ~/Documents/Financial/gnuCash
    mv ~/Documents/Financial/gnuCash/$(ls -t ~/Documents/Financial/gnuCash/ | head -1) ~/Documents/Financial/gnuCash/yourfile_name.gnucash

    echo
    echo "Restore Complete"
    echo
    echo "Exiting Application..."
    echo
    break
    else
        echo
        echo "Error...directory does not exist."
        echo "Please insert SanDisk(USB_Name) into USB and try again."
        echo
        break
    fi
done
