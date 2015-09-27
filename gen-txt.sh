#!/bin/sh

if [ -z $1 ] || [ ! -d $1 ]; then
  echo "Usage: $0 DIR"
  exit 1
fi

for html in $1/before/*/site/checkstyle.html; do
  txt=$(dirname $html)/checkstyle.txt
  links -dump $html > $txt
done

for html in $1/after/*/site/checkstyle.html; do
  txt=$(dirname $html)/checkstyle.txt
  links -dump $html > $txt
done
