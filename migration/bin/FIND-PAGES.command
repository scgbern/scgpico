#! /bin/sh

SEARCH='¡'

CONTENT=/Users/oscar/Documents/Projects/scgpico/content
cd ${CONTENT}
find . -type f -exec fgrep -H "${SEARCH}" {} \;

