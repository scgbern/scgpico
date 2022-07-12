#! /bin/sh
#
# Sync the config files from the repo to the local and remote sites.
#
# NB: Won't be needed if these files are linked to the github repo -- pull instead.
#
# 2022-07-04

RSYNC="-avz --delete -e ssh --stats --progress"

SCGBIB=/Users/oscar/Documents/Projects/scgbib-NEW/

LOCAL=/Users/oscar/Sites/Pico/
REMOTE=scg@yogi.inf.unibe.ch:/srv/testscg.unibe.ch/pico-release-v2/

rsync ${RSYNC} ${SCGBIB} ${LOCAL}/assets/scgbib/
rsync ${RSYNC} ${SCGBIB} ${REMOTE}/assets/scgbib/

open http://localhost/~oscar/Pico/
# open http://testscg.unibe.ch
