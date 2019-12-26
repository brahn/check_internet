#!/bin/bash
#
# Takes ping output as input, returns formatted string

ping_and_format_result () {
	echo `ping -q -c 1 -W 1 google.com | awk '/packet loss/ {print $7} /round-trip/ {split($4, times, "/"); print times[2], $5}'`
}

now=$(date +%Y-%m-%d\ %T\ %Z)
formatted_ping_result=$(ping_and_format_result)
echo "$now $formatted_ping_result"