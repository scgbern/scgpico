#! /bin/sh
#
# Sync the scgpico repo to the server.
#
# 2022-07-17

RSYNC="-avz --delete -e ssh --stats --progress"

LOCAL=/Users/oscar/Documents/Projects/
REMOTE=scg@yogi.inf.unibe.ch:/srv/scg.unibe.ch/

rsync ${RSYNC} ${LOCAL}/scgpico/ ${REMOTE}/scgpico/

open http://scg.unibe.ch

