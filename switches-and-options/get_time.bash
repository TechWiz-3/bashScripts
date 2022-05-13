#!/bin/bash

use_color="false"
for arguement in "$@"
do
    case $arguement in
        -c|--color|--colour)
        use_color="true" ;;
        *)
        echo "unknown arguement"
        exit 1
        ;;
    esac
done


purple=$(tput setaf 5)

if [[ "$use_color" == "true" ]]
then
    echo $purple$(date) $(tput sgr0)
else
    echo $(date)
fi