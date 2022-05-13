#!/bin/bash

use_color="false"
for arguement in "$@"
do
    case $arguement in
        -c|--color|--colour)
        use_color="true" ;;

        -h|--help)
        echo "Simple script that posts the current date and time"
        echo
        echo "Syntax: bash get_time.bash <arguements>"
        echo "options:"
        echo "-h or --help      shows this message"
        echo "-c or --color     uses a purple color to display the date"
        echo
        exit 1
        ;;

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