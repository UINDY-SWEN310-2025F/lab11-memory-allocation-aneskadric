#!/bin/bash
# mem_monitor.sh - show memory and swap usage in human-readable format every 2 seconds

echo "Showing memory usage every 2 seconds (Ctrl+C to stop)"

# Run `free` in human-readable mode (-h) every 2 seconds
# Use free's built-in sampling (-s) instead of writing our own loop
free -h -s 2
