#! /bin/sh
#
# See: https://linkchecker.github.io/linkchecker/

D=`dirname "$0"`
cd "$D"
log=log.$$.txt

# linkchecker http://scg.unibe.ch --verbose > log.txt

linkchecker http://scg.unibe.ch > $log

open $log
