#! /bin/sh
#
# Sync the fileouts to the repo
#
# 2022-07-05

echo "Don't do this -- the files have been migrated."

exit

RSYNC="-avz --delete -e ssh --stats --progress"
B=/Users/oscar/Documents/Projects/project-scg-pier-migration/bin

SOURCE=scg@cindy.inf.unibe.ch:/srv/scg.unibe.ch/app/
REPO=/Users/oscar/Documents/Projects/scgpico/migration/FileOuts/

for arg in PM.st PMMarkdownWriter.st
do
	echo rsync ${RSYNC} ${SOURCE}/${arg} ${REPO}/${arg}
	rsync ${RSYNC} ${SOURCE}/${arg} ${REPO}/${arg}
done

