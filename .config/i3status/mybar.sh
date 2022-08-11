#!/bin/sh
# vim:ts=4:sw=4:expandtab

background="#1d2021"
red="#cc241d"
green="#98971a"
yellow="#d79921"
blue="#458588"
purple="#b16286"
aqua="#689d68"
gray="#a89984"
darkgray="#1d2021"

separator() {
    echo -n "{"
    echo -n "\"full_text\":\"\","
    echo -n "\"separator\":false,"
    echo -n "\"separator_block_width\":0,"
    echo -n "\"border_left\":0,"
    echo -n "\"border_right\":0,"
    echo -n "\"border_top\":0,"
    echo -n "\"border_bottom\":0,"
    echo -n "\"color\":\"$1\","
    echo -n "\"background\":\"$2\""
    echo -n "},"
}

common_properties() {
    echo -n "\"border\":\"$background\","
    echo -n "\"separator\":false,"
    echo -n "\"separator_block_width\":0,"
    echo -n "\"color\":\"$darkgray\","
    echo -n "\"border_top\":3,"
    echo -n "\"border_bottom\":3,"
    echo -n "\"border_left\":0,"
    echo -n "\"border_right\":0"
}

current_date() {
    separator $aqua $background
    echo -n "{"
    echo -n "\"name\":\"time\","
    echo -n "\"full_text\":\"   $(date +"%b %d %H:%M:%S ")\","
    echo -n "\"background\":\"$aqua\","
    common_properties
    echo -n "},"
}

poweroff() {
    echo -n "{"
    echo -n "\"name\":\"poweroff\","
    echo -n "\"full_text\":\"   \""
    echo -n "}"
}

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
    current_date
    poweroff
    echo "]"
	sleep 1
done
