#!/bin/sh
echo -n "Type something and press enter: ";
read dir
echo You typed $dir
permission="y"
if (("$dir"="$permission")) ; then
  echo "String is not empty"
fi