#!/bin/bash

for item in *; do
    if [ -d "$item" ]; then
        echo "$item és un directory."
    elif [ -f "$item" ]; then
        echo "$item és un fitxer."
    else
        echo "$item no sé què és."
    fi
done