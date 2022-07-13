#! /bin/sh
#
# See: https://linkchecker.github.io/linkchecker/

D=`dirname "$0"`
cd "$D"

# linkchecker http://testscg.unibe.ch --verbose > log.txt

linkchecker http://testscg.unibe.ch > log.txt

open log.txt
