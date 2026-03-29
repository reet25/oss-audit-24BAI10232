#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Ask the user to enter the answers
echo "Answer three questions to generate your manifesto."
echo ""
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD
# Format the output
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"
# write the paragraph using these variables
echo "$TOOL gives the $FREEDOM to use, modify, and distribute the source code for free. I would build and share 
$BUILD using this as a base. Today is $DATE." > $OUTPUT
#display the output
echo "Manifesto saved to $OUTPUT"
cat $OUTPUT

