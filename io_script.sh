#!/bin/bash
#Read file "rfc1131" from /home/sbhatla/ and note the time difference
date -Ins
for i in `seq 1 100`;
do
	while read line
	do
		name=$line
	done < "/home/sbhatla/rfc1131.ps"
done
date -Ins
