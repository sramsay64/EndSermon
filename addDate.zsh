#!/usr/bin/zsh

# Assumes the year is 20xx and that the file has a .pptx or .pdf extention

addDate() {
	DATESTRING=$(stat "$1" | grep Modify | grep -o '20[0-9][0-9]-[0-9][0-9]-[0-9][0-9]')
	mv "$1" "$(basename -s .$2 $1) $DATESTRING.$2"
	echo "'$1' -> '$(basename -s .$2 $1) $DATESTRING.$2'" 1>&2
}

unDatedFiles() {
	ls -1 | grep ".$1$" | grep -v "20[0-9][0-9]-[0-9][0-9]-[0-9][0-9].$1$"
}



for ext in 'pdf' 'pptx'; do
	unDatedFiles $ext | {
	while read filename
	do
		addDate $filename $ext
	done
}
done
