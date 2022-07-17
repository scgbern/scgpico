#! /bin/sh
#
# See: https://linkchecker.github.io/linkchecker/

D=`dirname "$0"`
cd "$D"
log=log.$$.txt

linkchecker http://scg.unibe.ch \
	--ignore-url=/softwarenaut \
	--ignore-url=/assets \
	--ignore-url=/scgbib \
	--ignore-url=/download \
	--ignore-url=/files \
	--ignore-url=/archive \
	> $log

open $log
