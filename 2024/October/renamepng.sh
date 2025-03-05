#!/bin/bash

for n in {1..75}; do
    old_name="image-${n}.png"
    new_name="Octobar-${n}.png"

    if [ -f "$old_name" ]; then
        mv "$old_name" "$new_name"
        echo "Renamed: $old_name -> $new_name"
    else
        echo "File not found: $old_name"
    fi
done