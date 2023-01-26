#!/bin/bash

if [ $# != 2 ] ; then 
	echo "Špatný počet parametrů, given $#, expected 2" >&2
	exit 2
elif [ ! -f "$1" ] ; then 
	echo "soubor $1 neni obycejny soubor" >&2
	exit 2
elif [ ! -f "$2" ] ; then 
	echo "soubor $2 neni obycejny soubor" >&2
	exit 2
fi


if cmp "$1" "$2" >/dev/null ; then
	echo "soubory $1 a $2 jsou stejne" >&2
else
	echo "soubory $1 a $2 nejsou stejne" >&2
	exit 1
fi

