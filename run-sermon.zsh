#!/usr/bin/zsh

cloneAudTemplate() {
	sed -e "s/BLANKTEMPLATE_data/$1_data/" ~/Podcasts/Template/BLANKTEMPLATE.aup > $1.aup
	cp -r ~/Podcasts/Template/BLANKTEMPLATE_data "$1_data"
}

YEARSTAMP=$(date '+%Y')
DATESTAMP=$(date '+%Y-%m-%d-%b')
TIMESTAMP=$(date '+%I:%M:%S-%p')

echo "/home/huc/Podcasts/$YEARSTAMP/$DATESTAMP/$TIMESTAMP/"
mkdir -p "/home/huc/Podcasts/$YEARSTAMP/$DATESTAMP/$TIMESTAMP/"
cd "/home/huc/Podcasts/$YEARSTAMP/$DATESTAMP/$TIMESTAMP/"

cloneAudTemplate "Houghton-Sermon-$DATESTAMP-$TIMESTAMP"
audacity "Houghton-Sermon-$DATESTAMP-$TIMESTAMP.aup"
