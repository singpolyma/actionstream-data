#!/bin/sh

IMAGE_PATH="service-icons"
if [ -n "$1" ]; then
	IMAGE_PATH="$1"
fi

cat action-streams.css
cd service-icons
IFS="
"
for ICON in *; do
	echo ".service-`basename "$ICON" .png` { background-image: url(\"$IMAGE_PATH/$ICON\"); }"
done
