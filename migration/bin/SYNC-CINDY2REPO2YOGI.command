#! /bin/sh
#
# Sync the exported files from Cindy to the local repo and to the remote test server. Open the remote test site.
#
# 2022-07-04

RSYNC="-avz --delete -e ssh --stats --progress"
B=/Users/oscar/Documents/Projects/scgpico/migration/bin

SOURCE=scg@cindy.inf.unibe.ch:/srv/scg.unibe.ch/app/export/
CONTENT=/Users/oscar/Documents/Projects/scgpico/content/

LOCAL=/Users/oscar/Sites/Pico/content/
TARGET=scg@yogi.inf.unibe.ch:/srv/testscg.unibe.ch/pico-release-v2/content/

echo rsync ${RSYNC} ${SOURCE} ${CONTENT}
rsync ${RSYNC} ${SOURCE} ${CONTENT}

cd ${CONTENT}
echo find . -name \*.md -exec $B/fixPierAccents {} \;
find . -name \*.md -exec $B/fixPierAccents {} \;

echo rsync ${RSYNC} ${CONTENT} ${TARGET}
rsync ${RSYNC} ${CONTENT} ${TARGET}

open http://testscg.unibe.ch
