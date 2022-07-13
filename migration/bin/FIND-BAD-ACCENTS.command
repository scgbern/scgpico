#! /bin/sh

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
	-e 's/[äëôû]//g;' \
	-e 's/[¶©¼¡]//g;' \
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
