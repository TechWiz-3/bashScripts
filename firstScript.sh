#!/bin/bash

filename='subFolder/test.py'
n=1
while read line ; do
# reading each line
    n=$((n+1))
    if (($n == 6)) ; then
        echo "Do you wish to proceed with this? [y/n]"
        read input
    # if [[ $input == "y" ]] ; then
    #     echo --- Git Commit In Progress---
    #     echo $line
    #     sleep 2
    #     echo --- Git Push---
    #     break
    # fi


    # echo --- Git Add ---
    # git add .
    # sleep 2
    # echo --- Git Commit ---
    # echo $line
    # echo -n Do you wish to proceed with this [y/n]?
    # read ans
    # if [$ans == 'y'] ; then
    #     echo --- Git Commit In Progress---
    #     git commit -m $line pushed by Zacs script
    #     sleep 2
    #     echo --- Git Push---
    #     break
    # fi
fi
done < $filename