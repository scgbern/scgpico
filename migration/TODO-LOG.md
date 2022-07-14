---
# TO DO LOG

This file lists pending migration todos, past todos (done) and a brief FAQ.

---
# Migration to do

* Check all links
	- PB recommends https://linkchecker.github.io/linkchecker/
	- fixed htaccess to allow file browsing
	- /files and /archive links to be fixed to point to assets

* ... Fix accented characters
	* Use FIND-BAD-ACCENTS.command to find unusual chars
	* Use FIND-PAGES.command to find pages with those chars
	* Update fixPierAccents with the new accent (if found)
	* Update FIND-BAD-ACCENTS.command to ignore any uninteresting chars

* Make sure old style scgbib links will still wokr:
	- http://scg.unibe.ch/scgbib?query=Nierstrasz

---
# scgbib to do

* Fix handling of accents in scgbib
	* Fix the back-end js-conversion script in the new scgbib github repo

* What to do about composite scgbib queries? eg Publications scg-bp|scg-ip

* Clean up scgbib repo
	* set up github actions to test for errors and generate JS
	* set up assets/scgbib as a clone that can be pulled (won't work on yogi due to old RSA implementation)

---
# web server to do

* Enable and force HTTPS
	- https://github.com/alejandroliu/ForceHttpsPlugin
	- PB: needs a certificate

---
## DONE

- Fixed sidebar to shift to bottom on small devices
	- see example in main css style

- Changed background color of sidebar to white

- Removed all ugly yellow spans (in fixaccents script)

- Fixed some broken tables
	- Add a fake header at the beginning of the table
	- Example: /staff/Nataliia-Stulova

- Reduce the sizes of large images (esp. my home page)

- Fix embedded links
	- Example: /wiki/howtos/commonwritingerrors
	- Writing errors -- embedded pages broken
		- Link style is +namedPage+
		- Possible solution: use an iframe with a dedicated css to hide the header and footer
	- See PM new allEmbeddedPageLinks -- there are 203 of them in 41 pages
	- There is no easy way -- so just turn them into lists of links

- Fixed spaces in URLs
	- Must translate to %20

- Fixed broken titles
	- Must remove double quotes from meta header title

- Fix display of PRValueLink links
	- There are 9 types of these that display different kinds of things
	- See: PM new valueLinkDict
	- Of 135 links, all but 4 are embedded -- but probably all should be
	- value:redirect (29)
		- Added page redirects using meta refresh
		- Example: /staff/jorgeressia
		- link parameters first value
	- value:children (19)
		- Lists links to children pages
		- Often used in sidebars
		- Example: /research/bifrost/
			- +value:children|link+
		- Example: /teaching
			- value:children|link|select=Page|target=students
		- Problem: how does the sidebar know which page it belongs to?
			- This is in the “owner” field
			- Obviously this is done somehow by the other visitors
			- The PRValueLink gets this information, but needs the current “Context” -- what is this?
			- Solution: Store the current page in the visitor, also if a sidebar is being visited
			- Extended mdFor: to take both a struct and a page, and change the main visitor class-side method to take the page as an extra argument
	- Ignore these:
		- value:toc (18)
			- Generates TOC links to subsections
			- Complicated (requires anchors to be generated) and not so useful
			- Often used in sidebars
			- Example: /research/bifrost/
			- +value:toc+
		- value:contents (2)
			- lists contents of subpages instead of links
			- only used in test page (removed)
		- value:edited (26)
			- admin -- lists owner and date of a change
		- value:incoming (15)
			- admin -- lists incoming links?
		- value:parents
			- admin? lists parents?
		- value:structure (10)
			- Seems ad hoc; no clear what it does
		- value:user (6)
			- admin -- current user?

- Make sure all types of links are working -- only PRValueLink left
	- PM new allLinksDict
	- There are five kinds of links: 
		- PRExternalLink (4023) -- done
		- PRInternalLink (3614) -- done, except for embedded links to pages
		- PRMailLink (69)
			- Fix absoluteLinkFor: to return mail link
		* PRValueLink (563) -- to do
		- SCGExternalLink (135) -- done link to download folder

- Handled most file types (subclasses of PRStructure)
	There are 8 kinds of pages (See: PM new pageTypes):
	- PRPage: we write out the markdown
	- PRFile: these are uploads copied to the assets folder
	- CPBibFile (1) -- the SCG bib file
		- handled by visitLink:, not directly by the export script
	- PRComponent (46) -- each of these is bound to a particular class
		- These are handled indirectly by the visitLink: method
			- Instead of generating a dedicated page, special links are generated
		- See: PM new componentTypeDict
		- Already handled: CPAuthorPage, CPFixedQuery and CPQueryBox
		- See PM new componentLinkDict to see which are linked to
		- Other component types seems to be unimportant ...
	- TO IGNORE
		- CPWhatsNew (1) -- tracks updates to scgbib and generates a blog entry
		- PBBlog (1) -- the News blog; to be exported
		- PBPost (383) -- blog posts -- to be exported as files ...
		- PBComment (8) -- comments to blog pages; ignore?

- Fixed scgbib query pages
	- Sample: snf19 sidebar links to /scgbib with query parameters
	- *Publications>/scgbib|query=snf-asa3|sortBy=categoryYear*

- Added support for CPAuthorPage

- Fixed bug in scgbib -- no results are shown from 2022
	- Moved the front-end stuff to the new scgbib repo
	- The full (new) scgbib repo is now synced to the assets folders to avoid JS access issues
	- In future should be a clone of the repo so updates can be pulled

- Handle fixed queries
	- Added PM>>fixedQuery:text:

- Generate a dictionary of pages to pages that link to them
	- PM new linkDict
	- Key: absolute path Values: all pages that link to that path
	- PM new linkDict at: '/scgbib' -- all pages that link to scgbib

- Handle the scgbib query boxes
	- the link +/scgbib/query+ points to a CPQueryBox PRComponent of the scgbib CPBibFile
		- by default it generates ![Search SCG Bibliography](%base_url%/scgbib/query)
		- there is only one such page, but it is linked from many places
		- should be ![...](%assets_url/scgbib)
		<form method="GET" action="%assets_url%/scgbib">
			<input type="text" name="query" size="15" maxlength="800"/>
			<input type="submit" value="scg bib"/>
		</form>

- Compare reachable Pier pages with all existing instances
	- compare by subclass of PRPage

- Clean up PM method categories (scripts, queries, helpers)

- Set up scgbern pico github repo
	- moved all old pier-migration scripts etc to new repo
	- updated scripts

- set up scgbib github repo
	- clean up the README files
	- add the JS interface

- Embed sidebars
	- To do:
		- Dump each sidebar into a sidebar.md file
		- Update the template to find and load the sidebar
		- Update the css to put it in the right place

	- Need to get the id of the current page {{ current.id }}, change "index" to "sidebar", and then pass this to the content filter, eg {{ "teaching/pl/sidebar"|content }}
	- Translation can be done by the replace filter:
	    <div class="sidebar">
	        {{ current_page.id|replace({'index':'sidebar'})|content }}
	    </div>
	- CSS uses flex incantations
		- See: https://css-tricks.com/snippets/css/a-guide-to-flexbox/

- Export sidebars
	- Each PRPage has a #documents property, which is a dictionary with a 'sidebar' key
	- Added PM methods to extract and write out sidebars

- Changed `PM new pageTypes` to return a dictionary grouping pages by their types

- Embed images
	- Scaling is not supported -- need to scale images manually
	- added support for external links starting with 'download'
	- access download files: ![TEXT](%assets_url%/download/...)

- Handle image links
	- Item to display is an embedded image instead of text
	- check if it has children, and if so visit it

- Embed uploaded images
	- NB: all uploads are in the web/files folder
	- eg ![helloWorld.png](%assets_url%/files/9d/5akymvewfyzh52u2n8g8hdizjrllfl/helloWorld.png)
	- updated visitLink: to expand file upload URLs

- Fix indented bullet lists (Research page)
	- PRDocumentWriter maintains a nesting OrderedCollection of strings
	- Instead of adding “-” should add a space or a tab, and then the item should add the “-”
	- The nest:do: method adds and removes a nesting string
	- Fix visitList: to nest on tab and visitListItem: to add a '- '
	- Hack to ignore the first tab in the list

- Update SCG web pages to make clear that all activities have halted

- Generate canonical links for each page
	- Get rid of “?” syntax
	- For a page, get its absolutePath
	- For link, get the absolutePath of its target

- Add missing index.md files
	- PM new allPages only finds pages reachable from the root via external references, not from the menu
	- Instead use enumerator to find all children

- URL rewriting
	- updated the config.yaml
	- copied the htaccess file to the pico root folder

- Fix page titles
	- Added visitPage: to output meta header
	- Fixed write procedure to visit the page, then the document

- Fix bold and italics
	- Implemented visitBoldFormat: and visitItalicFormat:

- Support tables
	- fix visitTableRow: and visitTableCell:
	- add visitTable: to initialize a tableRow slot
	- need to add blank line before the header row, and a header separator after separator after
	* possible BUG: the tableRow was not initialized

- configured test server at http://testscg.unibe.ch and sync script

- fix external links to show the link name (DONE)
	- Fixed visitLink: to use text instead of title.

- fixed internal links -- added “?” prefix

- turned all absolute internal paths into relative ones
	- see PMMarkdownWriter>>#relativeLinkFor:

- for internal links, put the page title as the text
	- Instead of `self text` want `self target title`
	- NB: if target is nil, revert to `self text`


---
# Using Pico

Download Pico from: https://picocms.org/download/

Install in ~/Sites/Pico

Activate PHP (uncomment the php load command in /etc/apache2/httpd.conf)

	sudo su -
	cd /etc/apache2/
	vi httpd.conf
	apachectl restart

Open http://localhost/~oscar/Pico/

Dump the exported files into the content folder.

---
# FAQ

* Q How to use flex?
	“flex” is shorthand for flex-grow, flex-shrink and flex-basis combined. 

* Q How to file out the important code?

	PM new fileOutScripts

* Q How to export the pages?

	PM new export

* Q How to file out a class?

	Ctrl-click file out [not Ctrl-right-click]

* Q How to load the PM changes?

	Open the file list app, select PM.st and file in.

* Q How to export the site?

	PM new export

* Q How to find a given named pier page?

	See PM>>#pagesNamed:

* Q How to extract the contents of a page?

	PM root contents

`PRCase>>contents` gives the wiki contents.

Equivalent to

	PRWikiWRiter write: PM root document

PRCase>>plainText just gives the plain rendered text.

* Q How to create directories and files?

	See PM>>#writePage:

* Q Where is the root PRPage? Where is it registered?

	PRKernel instances someElement root

* Q How do we visit the pages?

	PRJSonVisitor new visit: PRKernel instances someElement root

* Q How to list all pages?
	
	PRPages allInstances collect: [ :p | p absolutePath ]

* Q How to activate apache rewriting?

	PB: Just activate the rewrite module `a2enmod rewrite` and restart apache2 `service restart apache2`.
	You find the configuration files in `/etc/apache2/mods-available/' and `/etc/apache2/mods-enabled`

* Q How to connect to cindy via VNC?

The modern mac vnc client does not seem to relay correctly the different mouse clicks, so cannot be used. Instead you should use chickenOfTheVNC, an old software that still runs on Magnix, and also under El Capitan.

- connect to vnc://magnix.inf.unibe.ch
- alterntaively start VPN and a Parallels El Capitan image
- start up Chicken of the VNC
- connect to cindy.inf.unibe.ch or scg.unibe.ch
- enter the SCG pier vnc password from 1Password

* Q How to connect your browser to the clone?

- The yogi clone is running on cindy.inf.unibe.ch -- you can make your machine point to it by adding the following line to /etc/hosts:
	130.92.64.123 scg.unibe.ch # make scg point to cindy
- Start up VPN to the Uni if necessary and then open scg.unibe.ch

* Q Where are the Pier files?

	/srv/scg.unibe.ch/

The pier images are in the app folder
The other web files are in web


* Q How to restart Pier?

sudo service scgpier restart

* Q Where to find legacy Squeak VMs?

- https://squeak.org/downloads/
- http://files.squeak.org

* Q Where is the scgpier service installed?

- /etc/init.d/scgpier
- Here we see it uses /usr/lib/squeak/4.4.7-2357/squeakvm from 2012

* Q Where is the description of scgbib Pier integration?

- http://scg.unibe.ch/wiki/howtos/howToLinkToScgBib
- See the “Design” section at the end

* Q Where is the scgbib implementation?

- http://www.squeaksource.com/Citezen.html
- See the package Citezen-Pier
- http://www.squeaksource.com/Citezen/Citezen-Pier-onierstrasz.57.mcz
- http://www.squeaksource.com/Citezen/Citezen-Pier-DamienCassou.65.mcz
- NB: you can change the file suffix to .zip and unzip it

* Q How does the automatic news work?

The Pier Squeak image periodically checks to see if there are new files in the “archive” folder. If there are, it check to see if there is an scgbib entry for that file. If so, then it generates a news item.

* Q How does the news to twitter gateway work?

It's a web service called dlvit that monitors the SCG news page and generates a tweet for every new news item: https://app.dlvrit.com

---
