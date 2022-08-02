#! /bin/sh
#
# Add the missing base_url to markdown links

echo already done
exit 

CONTENT=/Users/oscar/Documents/Projects/scgpico/content
cd ${CONTENT}
find . -type f -exec perl -pi -e 's/(\]\()\//\1%base_url%\//g;' {} \;

exit

