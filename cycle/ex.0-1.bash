#!/bin/bash
line="Ubuntu:20.04:LTS"
IFS=':' read -ra ADDR <<< "$line"
for i in "${ADDR[@]}"; 
do echo "$i"
done