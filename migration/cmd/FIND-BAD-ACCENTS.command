#! /bin/sh
#
# Generate a file containing all strange non-ascii characters found in the migrated pages.
# This has been used to identify characters to translate in post-processing using the fixAccents script.

REPO=/Users/oscar/Documents/Projects/scgpico
cd ${REPO}

tmp=_badaccents.txt

find content -type f -exec cat {} \; > $tmp

# delete all plain alpha chars
perl -pi \
	-e 's/[\w\d \t]*//g;' \
	-e 's/[\-\.\*\[\]\(\)\{\}\/\|\?\\\+\^\$]*//g;' \
	-e 's/[:&#,!;%=><@~"`]*//g;' \
	-e "s/'*//g;" \
	-e 's/[äëôûâ]//g;' \
	-e 's/[¶©¼¡±¢®¥§¨°½Ä²³¹¯º]//g;' \
	$tmp

# remove empty lines
sed -i '' '/^$/d' $tmp

# put each char on a separate line
sed -i '' 's/./&\n/g' $tmp

# remove duplicates
sort -u $tmp > $$.txt
mv $$.txt $tmp

open $tmp

exit
