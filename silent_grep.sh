#!/bin/bash
if [ $# -ne 2 ];then
	echo "Usage : $0 mathch_text filename"
	exit 1
fi
match_text=$1
file=$2
grep -q "$match_text" $file
if [ $? -eq 0 ];then
	echo "$match_text exit in $file"
else
	echo "not exist in $file"
fi
