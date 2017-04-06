#!/bin/bash
#Created by Shon Garrison
#February 13, 2014
#Purpose: Transfers the gnuCash file with date stamp to usb USB_Name/gnuCash directory
#Note: You will have to insert USB Name, ipAddress of your Server, name of your gcash
#gcash file, or account to make this script work.  Keep in mind your directory
#structure for script checks.

clear

while [ 1 ];
do

    if [ -d /media/your_account/USB_Name/gnuCash ]; then 

    cd /home/your_account/Documents/Financial/gnuCash
    rm yourfile_name.gnucash.*.log 
    rm yourfile_name.gnucash.*.gnucash
	cd -

	rsync -v -u ~/Documents/Financial/gnuCash/yourfile_name.gnucash
    /media/your_account/USB_Name/gnuCash/yourfile_name_$(date +%m%d%Y)computer_abbv.gnucash
    
    echo
    echo "Transfer Complete to usb media"
    echo 
    echo "Listing USB Directory..."
    echo
    echo
    ls -l /media/your_account/USB_Name/gnuCash/
    echo
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
