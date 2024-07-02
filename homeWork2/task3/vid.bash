#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

base_dir="$1"

format_time() {
    local total_seconds=$1
    printf "%02d:%02d:%02d\n" $((total_seconds/3600)) $((total_seconds%3600/60)) $((total_seconds%60))
}

total_duration_seconds=0

find "$base_dir" -type f -name '*.mp4' -exec \
    ffprobe -v error -show_entries format=duration -of default=noprint_wrappers=1:nokey=1 {} \; \
    | awk '{s+=$1} END {print s}' \
    | {
        read total_duration_seconds
        echo "Total duration of all video files: $(format_time $total_duration_seconds)"
    }