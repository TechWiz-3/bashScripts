#!/bin/bash

filename='subFolder/test.py'
n=1
while read line; do
# reading each line
echo "Line No. $n : $line"
n=$((n+1))
if (($n == 6)); then
    echo hello $line
    break
fi
done < $filename