#!/bin/bash

if [ $#  -gt 0  ]; then
	DROP=$*
else
	DROP="dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11"
fi

for drop in $DROP ; do
	ping -c 1 $drop > /dev/null
	if [ $? -gt 0 ]; then
		echo $drop" is dead"
	else
		echo $drop" is alive"
	fi
done

exit 0


