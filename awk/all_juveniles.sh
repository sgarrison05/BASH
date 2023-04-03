#!/bin/bash

# awk script to list all juveniles in a .csv file from cjis.
# Original script on the command line

awk -F '\",\"' '{if ($14 == "J") print $2,$3,$4,$5,$9,$10,$14,$23}' fullCountyOpenAndClosedOffenseReport.csv


