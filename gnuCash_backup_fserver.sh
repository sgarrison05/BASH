#!/bin/bash
#Created by Shon Garrison
#February 15, 2014
#Purpose: Transfer the gnuCash file to the Server only as a backup
#Note: You will have to insert ipAddress of your Server, name of your gcash
#gcash file, and account to make this script work.  Keep in mind your directory
#structure for script checks.

clear

while [ 1 ];
do

    if ssh your_account@server_ipAddress '[ -d /data/Finanical_Directory/gnuCash ]'; then

    cd ~/Documents/Financial/gnuCash
    rm yourfile_name.gnucash.*.log
    rm yourfile_name.gnucash.*.gnucash
	cd -

    rsync -v -u ~/Documents/Financial/gnuCash/yourfile_name.gnucash
    your_account@server_ipAddress:/data/Financial_Directory/gnuCash/yourfile_name_$(date +%m%d%Y)computer_abbv.gnucash

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
