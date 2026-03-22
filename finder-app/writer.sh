#!/bin/sh

if [ "$#" -ne 2 ]; then
       echo "Usage: $0 <writefile> <writestr>"
       exit 1
fi

writeFile="$1"
writeStr="$2"

writeDir=$(dirname "$writeFile")

if ! mkdir -p "$writeDir" ; then
	echo "Error: Could not create directory path '$writeDir'"
	exit 1
fi

if ! printf "%s" "$writeStr" > "$writeFile" ; then
	echo "Error: Could not create or write file '$writeFile'"
	exit 1
fi
