#! /bin/sh
#
# See: https://linkchecker.github.io/linkchecker/

D=`dirname "$0"`
cd "$D"
log=log.$$.txt

linkchecker http://scg.unibe.ch \
	--ignore-url=/softwarenaut \
	--no-follow-url=/softwarenaut \
	> $log

open $log
