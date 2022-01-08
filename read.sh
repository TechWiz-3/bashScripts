#!/bin/sh
echo "Type something and press enter: ";
a="yis"
read ans
if (("$a"=="yis")) ; then
echo hallo;
fi

echo "Do that? [Y,n]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
        echo "do that"
else
        echo "don't do that"
fi