#!/usr/bin/env bash

# Task 07: complete this script.
# Usage: ./scripts/analyze.sh FILE

# TODO: validate arguments
if [[ $# -eq 0 ]]; then
    echo "Usage: ./scripts/analyze.sh FILE"
    exit 1
fi

# TODO: validate file existence
if [[ ! -f "$1" ]]; then
    echo "文件不存在"
    exit 1
fi

# TODO: print:


# Total ERROR: <number>
error_count=$(grep "ERROR" "$1" | wc -l)
echo "Total ERROR: $error_count"

# Top Code: <code>
top_code=$(grep "ERROR" "$1" | cut -d ' ' -f 5 | cut -d '=' -f 2 | sort | uniq -c | sort -nr | head -n 1 | awk '{print $2}')
echo "Top Code: $top_code"
