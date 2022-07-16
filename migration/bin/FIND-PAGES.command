#! /bin/sh
#
# Generic script to search for pages with funny characters or particular incantations

# SEARCH='value:redirect'
SEARCH='objectmentor'

CONTENT=/Users/oscar/Documents/Projects/scgpico/content
cd ${CONTENT}
find . -type f -exec fgrep -H "${SEARCH}" {} \;

