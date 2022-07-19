#! /bin/sh
#
# Sync the scgbib repo to the server.
#
# 2022-07-17

RSYNC="-avz --delete -e ssh --stats --progress"

LOCAL=/Users/oscar/Documents/Projects/
REMOTE=scg@yogi.inf.unibe.ch:/srv/scg.unibe.ch/

rsync ${RSYNC} \
	'--exclude=_*' \
	${LOCAL}scgbib-NEW/ ${REMOTE}/scgbib/

open http://scg.unibe.ch/scgbib

