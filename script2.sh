#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Shreya Saxena | Course: Open Source Software
# Chosen Software: Apache HTTP Server

PACKAGE="apache2"    # Apache HTTP Server package name

echo "=========================================="
echo "     FOSS PACKAGE INSPECTOR"
echo "=========================================="
echo ""

# Check if package is installed (using dpkg for Ubuntu)
if dpkg -l $PACKAGE 2>/dev/null | grep -q "^ii"; then
    echo "✓ $PACKAGE is INSTALLED"
    echo ""
    echo "--- Package Information ---"
    dpkg -l $PACKAGE 2>/dev/null | grep "^ii" | awk '{print "Version: " $3}'
    echo ""
    echo "--- License Information ---"
    apt show $PACKAGE 2>/dev/null | grep -i "License" | head -1
    echo ""
    echo "--- Summary ---"
    apt show $PACKAGE 2>/dev/null | grep -i "Description" | head -2
else
    echo "✗ $PACKAGE is NOT installed"
fi

echo ""
echo "=========================================="
echo "     SOFTWARE PHILOSOPHY NOTE"
echo "=========================================="

# Case statement for software philosophy
case $PACKAGE in
    apache2)
        echo "Apache HTTP Server: The web server that built the open internet."
        echo "It powers over 30% of websites globally. Licensed under Apache 2.0."
        ;;
    firefox)
        echo "Firefox: Open source browser fighting for an open and private web."
        ;;
    vlc)
        echo "VLC: Plays anything, anywhere. Built by students in Paris."
        ;;
    mysql)
        echo "MySQL: Open source database at the heart of millions of apps."
        ;;
    *)
        echo "Open source software: Built by community, shared freely."
        ;;
esac

echo ""
echo "=========================================="
