---
Title: Completed Tasks
---

#Done

-  move selected [SCG Wiki](%base_url%/wiki) research pages to [Research](%base_url%/research)
-  suppress sidebar in browse view!
-  move [SCG Wiki](%base_url%/wiki) staff pages to [SCG Staff](%base_url%/staff)
-  cron jobs to rsync archive and download from scg.unibe.ch to asterix
-  support for localhost when you take Pier on the road with you
-  Setup the user rights
-  all broken 8-bit characters should be fixed now
-  [SCG Alumni](%base_url%/wiki/alumni) links fixed
-  RSS works for all pages (changes available to logged in users)
-  redirect www.iam.unibe.ch/~scg and smallwiki.unibe.ch
-  redirect news
-  move breadcrumb to top right
-  port cgi-bin scripts to haddock with pier css (stop-gap till citezen is working)
-  remove redundant Section headings (Teaching, Research, Wiki etc) from subpages
-  news headings should be consistent size (see [http://haddock.unibe.ch/teaching/cp](http://haddock.unibe.ch/teaching/cp))
-  Generic "What's new" should only appear on the top-level pages, as in the old static web.
-  bullet lists in sidebar should appear as bullet lists
-  RSS feed missing
-  Add "Syntax" link to edit page
-  Login button should also be at top right
-  Edit buttons should be at the top of the page (unobtrusive, at top right, I suggest, as in Smallwiki)
-  tables with empty cells should be properly aligned (cf. CP page &mdash; needed to add hyphens to empty cells)
	-  *You need to put a space to get an empty cell, because || means to center the following cell, |{ align left, |} align right, |! table heading. See the syntax page for details.*

-  [URLs that must not break](%base_url%/wiki/scgjoblist/scgpier/urlsthatmustnotbreak) (important URLs that should not break)
-  \+\+\* port existing scg pages to pier
-  \+\+\+\*\*\* automatic news items for publications (ported to haddock)
-  \+\+\+ change macamis redirect to new machine (ask Peppo)
-  \+\+\+\*\* automatic updating of scg.bib after someone commits in subversion (every ten minutes)
-  \+\+\+\* port the smallwiki pages (script works ...)
-  \+\+\+\* download folder on new machine
-  \+\+\+\* "How to" page
-  Lukas will give Oscar the syntax for the text representation of pages 
-  \+\+\+\* htaccess rewrite rules to map old/new
-  \+\+\+\* translate old web pages via the magic scripts of Oscar :)
-  \+\+\+\* the most important tools on the top
-  \+\+\+\* Syntax link

#Decisions:

-  old urls are going to disappear and redirected
-  Archive and Downloads will be in scg/public_html/
-  move the old pages into scg/public_html/Deprecated/
-  map old/new scg pages
-  map old/new smallwiki pages
