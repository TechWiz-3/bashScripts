#!/bin/bash

echo "File: "
read file
file_path=$(/bin/pwd)
echo "$file_path/$file"
git add "$file_path/$file"
echo "Commit message: "
read commit_message
git commit -m "$commit_message"
git status
sleep 3
echo "Push changes? [y/n]"
read ans
sleep 4
git status