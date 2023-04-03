#!/bin/bash

# awk scrpt to print missing dispositions in .csv file from cjis.
# Original script on the command line

awk -F '\",\"' '{if ($14 == "J" && $23 == "") print $2,$3,$4,$5,$9,$10,$14,$23}' fullCountyOpenAndClosedOffenseReport.csv

