#!/usr/bin/zsh

# Assumes the year is 20xx and that the file has the .pptx extention

addDate() {
	DATESTRING=$(stat "$1" | grep Modify | grep -o '20[0-9][0-9]-[0-9][0-9]-[0-9][0-9]')
	mv "$1" "$(basename -s .pptx $1) $DATESTRING.pptx"
}

unDatedFiles() {
	ls -1 | grep '.pptx$' | grep -v '20[0-9][0-9]-[0-9][0-9]-[0-9][0-9].pptx$'
}

unDatedFiles | {
while read filename
do
	addDate $filename
done
}
