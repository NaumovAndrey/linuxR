#!/bin/bash
file="/path/to/myfile"
while [ ! -e "$file" ]
do
    echo "File does not exist yet. Waiting..."
    sleep 5
done
    echo "File $file found. Proceeding..."