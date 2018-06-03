#!/usr/bin/zsh

# Assumes the year is 20xx and that the file has the .pptx extention

addDate() {
	DATESTRING=$(stat "$1" | grep Modify | grep -o '20[0-9][0-9]-[0-9][0-9]-[0-9][0-9]')
	mv "$1" "$(basename -s .pptx $1) $DATESTRING.pptx"
}

for filename in *.pptx
do
	addDate $filename
done
