#! /bin/sh
#
# Sync this repo to its location on Yogi
#
# 2022-07-16

RSYNC="-avz --delete -e ssh --stats --progress"

LOCAL=/Users/oscar/Documents/Projects/scgpico/
TARGET=scg@yogi.inf.unibe.ch:/srv/testscg.unibe.ch/scgpico/

rsync ${RSYNC} ${LOCAL} ${TARGET}

open http://testscg.unibe.ch
