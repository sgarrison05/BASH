#!/bin/bash
#Created by Shon Garrison
#February 15, 2014
#Purpose: Transfer the gnuCash file with date stamp to usb and server
#Note: You will have to insert USB Name, ipAddress of your Server, name of your gcash
#gcash file, and account to make this script work.  Keep in mind your directory
#structure for script checks.

clear

while [ 1 ];
do

    if [ -d /media/your_account/USB_Name/gnuCash ]; then

    cd /home/your_account/Documents/Financial
    rm youfile_name.gnucash.*.log
    rm yourfile_name.gnucash.*.gnucash
	cd -

	rsync -v -u ~/Documents/Financial/gnuCash/yourfile_name.gnucash
    /media/your_account/USB_Name/gnuCash/yourfile_name_$(date +%m%d%Y)computer_abbv.gnucash

    echo
    echo "Transfer Complete to usb media"
    echo
    echo "Listing USB Directory"
    echo
    echo
    ls -l /media/your_account/USB_Name/gnuCash/
    echo
    echo
    echo "Now atttempting to transfer to File-Server..."
    echo
    else
        echo
        echo "Error...directory does not exist."
        echo "Please insert 'USB Name' into USB and try again."
        echo
        break
    fi

    if ssh your_account@your_ipAddress '[ -d /data/financial_dir_name]'; then
    rsync -v -u ~/Documents/Financial/gnuCash/yourfile_name.gnucash
    your_account@ipAddress:/data/your_account/Financial/gnuCash/yourfile_name_$(date
    +%m%d%Y)computer_abbv.gnucash

    echo
    echo "Tranfer to Server Complete"
    echo
    echo "Exiting Application..."
    echo
    break
    else
        echo
        echo "Error...directory not found."
        echo "please start server and try again."
        echo
        break
    fi

done
