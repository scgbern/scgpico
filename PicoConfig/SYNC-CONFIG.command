#! /bin/sh
#
# Sync the config files from the repo to the local and remote sites.
#
# NB: Won't be needed if these files are linked to the github repo -- pull instead.
#
# 2022-07-04

RSYNC="-avz --delete -e ssh --stats --progress"

CONFIG=/Users/oscar/Documents/Projects/scgpico/PicoConfig

LOCAL=/Users/oscar/Sites/Pico/
REMOTE=scg@yogi.inf.unibe.ch:/srv/testscg.unibe.ch/pico-release-v2/

rsync ${RSYNC} ${CONFIG}/config/ ${LOCAL}/config/
rsync ${RSYNC} ${CONFIG}/config/ ${REMOTE}/config/

rsync ${RSYNC} ${CONFIG}/themes/scg/ ${LOCAL}/themes/scg/
rsync ${RSYNC} ${CONFIG}/themes/scg/ ${REMOTE}/themes/scg/

rsync ${RSYNC} ${CONFIG}/htaccess ${LOCAL}/.htaccess
rsync ${RSYNC} ${CONFIG}/htaccess ${REMOTE}/.htaccess

open http://localhost/~oscar/Pico/
# open http://testscg.unibe.ch
