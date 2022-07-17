#! /bin/sh -x
#
# Sync the content and config files locally for testing.
#
# These files must be synced because local hosting should (can) not access files in a user's Documents folder.
#
# 2022-07-04

RSYNC="-avz --delete -e ssh --stats --progress"

PROJECTS=/Users/oscar/Documents/Projects
REPO=$PROJECTS/scgpico
CONFIG=$REPO/PicoConfig
LOCAL=/Users/oscar/Sites/Pico
SCGBIB=$PROJECTS/scgbib-NEW/

# Markdown files
rsync $RSYNC $REPO/content/ $LOCAL/content/

# Pico configuration files
rsync $RSYNC $REPO/PicoConfig/config/ $LOCAL/config/
rsync $RSYNC $CONFIG/themes/scg/ $LOCAL/themes/scg/
rsync $RSYNC $CONFIG/htaccess $LOCAL/.htaccess

# Oh, and the scgbib repo too
rsync $RSYNC $SCGBIB $LOCAL/assets/scgbib/

open http://localhost/~oscar/Pico/
