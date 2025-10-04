#!/bin/bash

BASE_DIR="."
FILES_DIR="$BASE_DIR/files"

for file in "$FILES_DIR"/*.txt; do
    [ -e "$file" ] || continue
    filename=$(basename "$file")
    first_letter=$(echo "${filename:0:1}" | tr '[:upper:]' '[:lower:]')
    dest="$BASE_DIR/$first_letter"

    if [ -d "$dest" ]; then
        mv "$file" "$dest/"
    fi
done
