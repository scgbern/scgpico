#! /bin/sh
#
# Sync the config files from the repo to the local site.
#
# 2022-07-04

RSYNC="-avz --delete -e ssh --stats --progress"

CONFIG=/Users/oscar/Documents/Projects/scgpico/PicoConfig
SCGBIB=/Users/oscar/Documents/Projects/scgbib-NEW

LOCAL=/Users/oscar/Sites/Pico/

rsync ${RSYNC} ${CONFIG}/config/ ${LOCAL}/config/
rsync ${RSYNC} ${CONFIG}/themes/scg/ ${LOCAL}/themes/scg/
rsync ${RSYNC} ${SCGBIB} ${LOCAL}/assets/scgbib/
rsync ${RSYNC} ${CONFIG}/htaccess ${LOCAL}/.htaccess

open http://localhost/~oscar/Pico/
