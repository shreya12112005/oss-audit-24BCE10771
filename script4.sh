#!/bin/bash
# Script 4: Log File Analyzer
# Author: Shreya Saxena
# Course: Open Source Software
# Chosen Software: Apache HTTP Server

# Set log file and keyword from command line arguments
LOGFILE=${1:-/var/log/apache2/error.log}
KEYWORD=${2:-error}
COUNT=0

echo "=========================================="
echo "     LOG FILE ANALYZER"
echo "=========================================="
echo ""

# Check if log file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "Log file is empty."
    echo "Tip: Visit http://localhost in your browser to generate log entries."
    echo ""
fi

# Read log file line by line and count matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Display results
echo "File Analyzed: $LOGFILE"
echo "Keyword Searched: $KEYWORD"
echo "Total Matches Found: $COUNT"
echo ""

# Show last 5 matching lines
echo "Last 5 matching lines:"
echo "-----------------------------------"
grep -i "$KEYWORD" "$LOGFILE" 2>/dev/null | tail -5

if [ $COUNT -eq 0 ]; then
    echo "No matches found for keyword '$KEYWORD'."
fi

echo ""
echo "=========================================="
