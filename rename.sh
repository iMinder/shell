#!/bin/bash
#name : rename.sh
#use:renmae jpg or png image
count=1
for img in `find . -iname '*.png' -o -iname '*.jpg' -type f -maxdepth 1`
do 
	new=image-$count.${img##*.}
	echo "Rename $img to $new"
	mv "$img" "$new"
	let count++

done
