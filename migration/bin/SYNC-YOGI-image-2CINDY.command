#! /bin/sh
#
# Sync the Yogi downloads, files, archive and image and changes to the local mirror, and then to cindy
# CAVEAT: be sure to stop the server and backup the image
#
# 2022-07-13

RSYNC="-avz --delete -e ssh --stats --progress"

MIRROR="/Users/oscar/Mirrors/home/scg/scg.unibe.ch"

YOGI=scg@yogi.inf.unibe.ch:/srv/scg.unibe.ch
TESTSCG=scg@yogi.inf.unibe.ch:/srv/testscg.unibe.ch
CINDY=scg@cindy.inf.unibe.ch:/srv/scg.unibe.ch

for arg in app/scg.image app/scg.changes
do
	echo rsync ${RSYNC} ${YOGI}/${arg} ${MIRROR}/${arg}
	rsync ${RSYNC} \
		${YOGI}/${arg} ${MIRROR}/${arg}
done

for arg in app/scg.image app/scg.changes web/archive/ web/download/ web/files/
do
	echo rsync ${RSYNC} ${TESTSCG}/${arg} ${MIRROR}/${arg}
	rsync ${RSYNC} \
		${TESTSCG}/${arg} ${MIRROR}/${arg}
done

for arg in app/scg.image app/scg.changes web/archive/ web/download/ web/files/ 
do
	echo rsync ${RSYNC} ${MIRROR}/${arg} ${CINDY}/${arg}
	rsync ${RSYNC} ${MIRROR}/${arg} ${CINDY}/${arg}
done

