#!/bin/bash

## The lazy Red Teamer's nmap script ##

here=$(pwd)

sudo nmap -sV -p- $1 -T4 -oA $2
echo ""
echo "Results of this scan have been stored at" $here/$2.nmap 
