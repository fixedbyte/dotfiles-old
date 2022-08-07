#!/bin/sh
# vim:ts=4:sw=4:expandtab
# Send the header so that i3bar knows we want to use JSON:
echo '{ "version": 1, "click_events": true }'

# Begin the endless array.
echo '['

# We send an empty first array of blocks to make the loop simpler:
echo '[]'

# Now send blocks with information forever:
while :;
do
    echo ",["
    echo    "{"
    echo        "\"name\":\"time\","
    echo        "\"full_text\":\"$(date)\""
    echo    "}"
    echo "]"
	sleep 1
done
