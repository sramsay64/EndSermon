#!/usr/bin/zsh

cloneAudTemplate() {
	sed -e "s/BLANKTEMPLATE_data/$1_data/" ~/Podcasts/Template/BLANKTEMPLATE.aup > $1.aup
	cp -r ~/Podcasts/Template/BLANKTEMPLATE_data "$1_data"
}

YEARSTAMP=$(date '+%Y')
DATESTAMP=$(date '+%Y-%m-%d-%b')
TIMESTAMP=$(date '+%I-%M-%S-%p')

PROCS=$(ps -a | grep 'run-sermon.z[s]h' | wc -l)
PROCS2=$(ps -a | grep 'audacity' | wc -l)
echo PROCS is $PROCS
echo PROCS2 is $PROCS2
echo 0 is $0

if (( $PROCS < 2 )) && (( $PROCS2 < 1 )); then
	echo "/home/huc/Podcasts/$YEARSTAMP/$DATESTAMP/$TIMESTAMP/"
	mkdir -p "/home/huc/Podcasts/$YEARSTAMP/$DATESTAMP/$TIMESTAMP/"
	cd "/home/huc/Podcasts/$YEARSTAMP/$DATESTAMP/$TIMESTAMP/"
	
	cloneAudTemplate "Houghton-Sermon-$DATESTAMP-$TIMESTAMP"
	audacity "Houghton-Sermon-$DATESTAMP-$TIMESTAMP.aup"
fi
