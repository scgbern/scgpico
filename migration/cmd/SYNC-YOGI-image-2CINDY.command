#! /bin/sh
#
# Sync the Yogi downloads, files, archive and image and changes to the local mirror, and then to cindy
# CAVEAT: be sure to stop the server and backup the image
#
# 2022-07-13

echo "Don't do this -- the files have been migrated."

exit

RSYNC="-avz --delete -e ssh --stats --progress"
MIRROR="/Users/oscar/Mirrors/home/scg/scg.unibe.ch"

YOGI=scg@yogi.inf.unibe.ch:/srv/scg.unibe.ch
TESTSCG=scg@yogi.inf.unibe.ch:/srv/testscg.unibe.ch
CINDY=scg@cindy.inf.unibe.ch:/srv/scg.unibe.ch

echo  "===== SYNCING YOGI TO LOCAL MIRROR ====="

for arg in app/scg.image app/scg.changes
do
	echo "===== rsync ${RSYNC} ${YOGI}/${arg} ${MIRROR}/${arg} ====="
	rsync ${RSYNC} ${YOGI}/${arg} ${MIRROR}/${arg}
done

for arg in archive/ download/ files/
do
	echo "===== rsync ${RSYNC} ${TESTSCG}/${arg} ${MIRROR}/web/${arg} ====="
	rsync ${RSYNC} ${TESTSCG}/${arg} ${MIRROR}/web/${arg}
done

echo  "===== SYNCING LOCAL MIRROR TO CINDY ====="

for arg in app/scg.image app/scg.changes web/archive/ web/download/ web/files/ 
do
	echo r"===== sync ${RSYNC} ${MIRROR}/${arg} ${CINDY}/${arg} ====="
	rsync ${RSYNC} ${MIRROR}/${arg} ${CINDY}/${arg}
done

