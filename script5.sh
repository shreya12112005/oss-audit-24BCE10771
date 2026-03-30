#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Shreya Saxena
# Course: Open Source Software
# Chosen Software: Apache HTTP Server

echo "=========================================="
echo "  OPEN SOURCE MANIFESTO GENERATOR"
echo "=========================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# Ask questions interactively
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date and username
DATE=$(date '+%d %B %Y')
USERNAME=$(whoami)
OUTPUT="manifesto_${USERNAME}.txt"

# Create the manifesto file
echo "==========================================" > "$OUTPUT"
echo "     MY OPEN SOURCE MANIFESTO" >> "$OUTPUT"
echo "==========================================" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "Author: Shreya Saxena
echo "Chosen Software: Apache HTTP Server" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I use $TOOL every day. To me, freedom means $FREEDOM." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "If I could build anything and share it freely, I would build $BUILD." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that software should be open, transparent, and accessible" >> "$OUTPUT"
echo "to everyone. The open source community has shown that collaboration" >> "$OUTPUT"
echo "creates better tools for all of humanity." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I commit to contributing back to the open source ecosystem that" >> "$OUTPUT"
echo "gives me the freedom to learn, create, and share." >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "==========================================" >> "$OUTPUT"

echo ""
echo "Manifesto saved to: $OUTPUT"
echo ""
echo "Here is your manifesto:"
echo "=========================================="
cat "$OUTPUT"
