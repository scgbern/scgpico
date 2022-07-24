#! /bin/sh
#
# Process the linkchecker output to produce a delimited text file suitable for importing into a spreadsheet

D=`dirname "$0"`
cd "$D"

prefix='broken-external-links-2022-07-24-c'

# --------------------------------------------------------------------------------
main () {
	log="$prefix.txt"
	
	ERROR="Error: 404 Not Found"
	OUT="$prefix-404-dt.txt"
	links2dt "$ERROR"	"$log" "$OUT"
	open $OUT
	
	ERROR="Error: 403 Forbidden"
	OUT="$prefix-403-dt.txt"
	links2dt "$ERROR"	"$log" "$OUT"
	open $OUT

	ERROR="ConnectionError"
	OUT="$prefix-ConnectionError-dt.txt"
	links2dt "$ERROR"	"$log" "$OUT"
	open $OUT

	ERROR="Error: ConnectTimeout"
	OUT="$prefix-ConnectTimeout-dt.txt"
	links2dt "$ERROR"	"$log" "$OUT"
	open $OUT
}
# --------------------------------------------------------------------------------
links2dt () {
	error="$1"
	log="$2"
	out="$3"
	./rgrep "$error" $log \
	| fgrep 'URL ' \
	| perl -p \
		-e 's/^Real URL.*//;' \
		-e 's/^Parent URL\s*(\S+),\s.*$/\1/;' \
		-e 's/^http:\/\/scg.unibe.ch\///;' \
		-e 's/^URL\s*`(\S+)'\''$/\1\t/;' \
		-e 's/^URL lengths: .*//;' \
	| perl -p \
		-e 'BEGIN { undef $/; } s/\t\n/\t/g;' \
		-e 's/\n\n/\n/g;' \
		-e 's/^/BROKEN\tPATH\n/g;' \
	| perl -p \
				-e 's/(\S+)\t(\S+)/\2\t\1/;' \
	> $out
}
# --------------------------------------------------------------------------------
main
exit 0
# --------------------------------------------------------------------------------

82 Result     Error: 404 Not Found
35 Result     Error: ConnectionError
26 Result     Error: 403 Forbidden
11 Result     Error: ConnectTimeout
 2 Result     Error: 401 Unauthorized
 1 Result     Error: SSLError
 1 Result     Error: ReadTimeout
 1 Result     Error: 999 Request denied
 1 Result     Error: 522 


ERROR="XXX"
OUT="$prefix-YYY-dt.txt"
links2dt "$ERROR"	"$log" "$OUT"
open $OUT

ERROR="XXX"
OUT="$prefix-YYY-dt.txt"
links2dt "$ERROR"	"$log" "$OUT"
open $OUT
