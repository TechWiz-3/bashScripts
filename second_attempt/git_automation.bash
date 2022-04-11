#!/bin/bash

convey () {
    say -v $3 $1
    echo $2
}  

echo """
  ____ ___ _____    ____  ___ ___ _   _ 
 / ___|_ _|_   _|  / ___|/ _ \_ _| \ | |
| |  _ | |  | |   | |  _| | | | ||  \| |
| |_| || |  | |   | |_| | |_| | || |\  |
 \____|___| |_|    \____|\___/___|_| \_|
"""
afplay /Users/Peregrine/Downloads/dana_start.m4a
convey "Enter the file path from current D I R... Also, X to escape the loop -r 10" "File: " "Fiona"
read file
while [ "$file" != "X" ]
    do
    file_path=$(/bin/pwd)
    echo "$file_path/$file"
    if [ "$file" == "all" ]
        then
        git add .
    else
        git add "$file_path/$file"
        echo "File: "
        read file
    fi
done
#afplay /Users/Peregrine/Downloads/winterspell.m4a &
convey "Enter commit message" "Commit message: " "Alice"
read commit_message
git commit -m "$commit_message"
git status
sleep 3
convey "Push changes... Y or N?" "Push changes? [y/n]" "Fiona"
read ans
#if [$ans -e "y"]
#if (($ans = "y"))
if [ "$ans" == "y" ]
    then
    say "Pushing changes"
    git push
    sleep 4
    git status
else
    echo "Git push cancelled"
    say "Git push cancelled"
fi