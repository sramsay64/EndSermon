#!/usr/bin/zsh

cd ~/bin/java/endSermon/
make SaveSermon

# Audacity should now be saving the mp3 file #

cd ~/Podcasts/mp3/save-point/

audioFile=$(ls -1t | head -n1)

# Wait until the mp3 file size (stat command output) stops changing
while ! diff <(stat "$audioFile") <(sleep 5; stat "$audioFile")
do
	echo going;
done

cd ~/bin/java/endSermon/
# Close Audacity
make EndSermon


cd ~/Podcasts/mp3/save-point/
# Rename the .aiff to .mp3
mv $audioFile $(echo $audioFile | sed 's/aiff/mp3/')
# Update file name variable for later use
audioFile=$(ls -1t | head -n1)

YEARSTAMP=$(date '+%Y')
MONTHSTAMP=$(date '+%Y-%m-%B')
DATESTAMP=$(date '+%Y-%m-%d-%b')
FOLDERNAME="/home/huc/Podcasts/mp3/$YEARSTAMP/$MONTHSTAMP/"
mkdir -p $FOLDERNAME

# Move the file to it's permanent location
mv $audioFile $FOLDERNAME

# Give some indication that there was actually success and not failure
notify-send --icon=/usr/share/icons/elementary/apps/128/checkbox.svg "Sermon finished and is now an mp3 file"
