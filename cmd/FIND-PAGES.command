#! /bin/sh
#
# Generic script to search for pages with funny characters or particular incantations

# SEARCH='value:redirect'
SEARCH='query=[^\)]+ '

CONTENT=/Users/oscar/Documents/Projects/scgpico/content
cd ${CONTENT}

# find . -type f -exec fgrep -H "$SEARCH" {} \;
# find . -type f -exec fgrep -l "$SEARCH" {} \;

find . -type f -exec egrep -H "$SEARCH" {} \;

# mate `find . -type f -exec fgrep -l "$SEARCH" {} \;`

