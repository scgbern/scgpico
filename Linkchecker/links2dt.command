#! /bin/sh
#
# Process the linkchecker output to produce a delimited text file suitable for importing into a spreadsheet

D=`dirname "$0"`
cd "$D"

prefix='broken-external-links-2022-07-23'
log="$prefix.txt"
out="$prefix-dt.txt"

fgrep 'URL ' $log \
| perl -p \
	-e 's/^URL.*//;' \
	-e 's/^Parent URL\s*(\S+),\s.*$/\1\/index.md/;' \
	-e 's/^http:\/\/scg.unibe.ch\///;' \
	-e 's/^Real URL\s*(\S+)$/\t\1/;' \
| perl -p \
	-e 'BEGIN { undef $/; } s/\n\t/\t/g;' \
	-e 's/^\n/PATH\tBROKEN\n/g;' \
	-e 's/\n\n/\n/g;' \
> $out

open $out
