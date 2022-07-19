#! /bin/sh
#
# Sync the config files from the repo to the local site.
#
# 2022-07-04

RSYNC="-avz --delete -e ssh --stats --progress"

LOCAL=/Users/oscar/Documents/Projects/scgpico/PicoConfig/apache/
REMOTE=scg@yogi.inf.unibe.ch:/home/scg/apache/

rsync ${RSYNC} $LOCAL $REMOTE
