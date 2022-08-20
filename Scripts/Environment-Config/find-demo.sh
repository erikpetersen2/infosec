#!/bin/bash

## Find Command Demo For Cyber Patriot

touch /tmp/tmp
echo ""
echo "Time to practice your skills with the find command!"
echo ""
echo "A flag named flag.txt has been placed on your system... can you find it?"
echo "You found the flag!"  > /tmp/tmp
base64 /tmp/tmp > /tmp/flag.txt
rm /tmp/tmp
