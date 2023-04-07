#!/bin/bash
#Created by Shon Garrison
#September 30, 2014
#Purpose: Short interactive menu for commands
#Note: Some of these commands depend on what is installed on your system
trap '' 2
while [ 1 ];
do
  clear
  echo ""
  echo "                ----- BASH Menu -----"
  echo ""
  echo ""
  echo "====================== System ======================="
  echo ""
  echo "Enter u to run update: "
  echo "Enter c for current calendar: "
  echo "Enter cl to clean apt: "
  echo ""
  echo "====================== Scripts ======================"
  echo ""
  echo "Enter sgc for simple timer < 1 min: "
  echo "Enter sgac for an advanced timer > 1 min: "
  echo ""
  echo "====================== GnuCash ======================"
  echo ""
  echo "Enter r to restore gnuCash file: "
  echo "Enter b to backup gnuCash file to USB: "
  echo "Enter a for Adv gnuCash file Backup (USB & FServer): "
  echo "Enter f to backup gnuCash file only to FServer: "
  echo ""
  echo "====================== Applications  ================"
  echo ""
  echo "Enter e for elinks browswer: "
  echo "Enter w for weechat: "
  echo "Enter cal for calcurse: "
  echo "Enter ht for htop: "
  echo "Enter mt for mutt email client:"
  echo "Enter sc for spreadsheet calculator: "
  echo "Enter nb for newsboat rss feed reader: "
  echo ""
  echo "====================================================="
  echo ""
  echo "Enter q to exit the menu to the cmd prompt: "
  echo -e "\n"
  echo -e "Enter your selection \c"
  read answer
  clear 
  echo ""
  
  case "$answer" in
    u) sudo apt update && sudo apt upgrade ;;
    cl) sudo apt-get clean && sudo apt-get autoclean && sudo apt-get autoremove ;;
    # must be in your ~/.local/bin/ directory and placed in $PATH variable
    # -------------------------------------------------------------------- 
    r) gnuCash_restore ;; #gcrest
    b) gnuCash_backup ;; #gcbak 
    a) gnuCash_backup_adv ;; #gcbadv 
    f) gnuCash_backup_fserver ;; #gcbfs 
    sgac) adv_countdown ;; #acount 
    sgc) countdown cd ;; #countd
    # --------------------------------------------------------------------
    c) cal ;;
    e) elinks ;;
    w) weechat-curses ;;
    cal) calcurse ;;
    ht) htop ;;
    mt) mutt ;;
    sc) sc ;;
    nb) newsboat ;;
    q) exit ;;
    *) echo "Unsupported Item $answer!" >&2
        exit 1 ;;
  esac
  echo ""
  echo -e "Press Enter/Return to continue---> \c"
  read input
done

