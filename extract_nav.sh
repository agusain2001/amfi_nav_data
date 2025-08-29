#!/bin/bash

curl -s https://www.amfiindia.com/spages/NAVAll.txt | \
grep -v "^$" | \
grep -v "Scheme Code;ISIN Div Payout/ ISIN Growth;ISIN Div Reinvestment;Scheme Name;Net Asset Value;Date" | \
grep -v "Open Ended Schemes" | \
grep -v "Mutual Fund" | \
grep -v "^\s*$" | \
awk -F';' '{print $4 "\t" $5}' > amfi_nav.tsv

