# Description

This folder contains various resources and experiments to migrate the SCG Pier installation to Pico, a lightweight markdown-based CMS.

---
# Scripts

The saved classes and methods are in the FileOuts folder. To file them into the Squeak image, navigate with the file browser and “install” them (file in). To file them out after changing them, run `PM new fileOutScripts`

The key class is PM.st. It is a class containing a bunch of scripts, as methods, to export the Pier contents. It makes use of PMMarkdownWriter, the visitor to generate markdown from the Pier pages.

The exported web site is in the content folder. This can be synched to the content folder of a Pico installation (or linked to a checked-out clone).

---
# Overview

PMMarkdownWriter is a visitor that generates markdown for Pier pages and content.

The first version of the class was created by cloning PRWikiWriter, that is, by compiling each of its methods to the new class. We needed a sibling rather than a subclass because the visit* methods invoke the super methods inherited from PRVisitor. The visit* methods have been incrementally updated to generate proper markdown.

NB: to keep the implementation is compact as possible, no new methods or class extensions are being added to other classes of the core Pier system. This leads to some ugly type-testing code.

---
# To do

* Handle fixed queries

* Fix notExportedPages query to consider the PRComponent pages handled

* Handle other file types (subclasses of PRStructure)
	There are 8 kinds of pages (See: PM new pageTypes):
	- PRPage: we write out the markdown
	- PRFile: these are uploads copied to the assets folder
	- TO DO:
		* CPBibFile (1) -- the SCG bib file
		* PRComponent (46) -- each of these is bound to a particular class
			- See: PM new componentTypeDict
			- The important ones are CPAuthorPage, CPFixedQuery and CPQueryBox
			- Also 
	- TO IGNORE
		- CPWhatsNew (1) -- tracks updates to scgbib and generates a blog entry
		- PBBlog (1) -- the News blog; to be exported
		- PBPost (383) -- blog posts -- to be exported as files ...
		- PBComment (8) -- comments to blog pages; ignore?

* Some Wiki pages broken
	- Writing errors -- embedded pages broken
		- Link style is +namedPage+
		- Possible solution: use an iframe with a dedicated css to hide the header and footer
	- Front page: the value:children link is broken (generates list of children pages)
		This is a PRValueLink

* check if mail and other links are working
	PM new allLinksDict
	There are five kinds of links: 
		- PRExternalLink (4023) -- done
		- PRInternalLink (3614) -- done, except for embedded links to pages
		* PRMailLink (69) -- to do
		* PRValueLink (563) -- to do
			PM new valueLinkDict
		- SCGExternalLink (135) -- done link to download folder

* Fix sidebar to shift to bottom on small devices
	- see example in main css style

* Don't display sidebar if file is absent

* Reduce the sizes of large images (esp. my home page)

* ... Fix accented characters
	- Use external script fixPierAccents within sync script
	- Add new translations there
	* cat all .md files and delete all plain ascii lines to search for accented chars

* Clone Pico repo?
	- to enable easy pulling of new versions?
	- https://github.com/picocms/Pico

* Check all links
	- PB recommends https://linkchecker.github.io/linkchecker/

* Enable and force HTTPS
	- https://github.com/alejandroliu/ForceHttpsPlugin
	- PB: needs a certificate

* Fix handling of accents in scgbib
	* Fix the back-end js-conversion script in the new scgbib github repo

* Clean up scgbib repo
	* Install github repo in assets or download folder (can't git clone on yogi -- too old RSA)
	* set up github actions to test for errors and generate JS

---
## DONE

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

# Archive of old notes

---
# SCG Pier Migration

See the project-scg-pier-migration git repo

See also:
https://drive.google.com/drive/folders/1k-ody5bLsxdcopp8E2PqAfZpjaBxUB_b?usp=sharing

Citation search engine repo:

https://github.com/AlexandruFilipescu/Citation-Search-Engine

Ivan's project files

https://drive.google.com/drive/folders/1k-ody5bLsxdcopp8E2PqAfZpjaBxUB_b?usp=sharing

---
# 2022-02-09

Which renderer yields the Pillar/markdown view?

PRHtmlVisitor -- there are no calls to this class!

Have a look at PRWikiWriter and PRTextWriter

NB: There are scripts in LCHTMLFile>>#lukasScripts and convertToPier:
This is about Link Checking though, and conversion from HTML to Pier.

How to generate plain text or wiki representation?
See PRCase>>#contents and PRCase>>#plainText

contents = raw wiki format
plainText = translated to plain text of what you see (links shown as text)

* Can we simply visit all the pages and dump their contents?

What about the sidebar?

PRKernel instances someElement root contents

* How to navigate the whole tree?

A PRPage has a document (a PRDocument) which has children (a PRDocumentItem).

* How do I find the links (PRLink) within a page/document?

Need to iterate over the tree of children, and find the ones that satisfy
[:ea | ea isLink and: [ ea isInternal ]]

Add method PRDocumentItem>>#links

Alternatively use outgoingReferences:

PRKernel instances someElement root outgoingReferences
	collect: #yourself


Can filter for Internal links, and targets

* How to get a list of all pages?

Need to iterate over all links, find the pages, and add them to a dictionary until none can be added.

Again, alternatively with a Visitor.


---
# Markdown-based CMSs

https://awesomeopensource.com/projects/cms/markdown

https://medevel.com/18-flat-file-cms-for-enterprise/

The best is Grav? https://getgrav.org

Pico? https://picocms.org

To add: Lektor ?

Questions

Can I embed JS?

---
# Pico
Apparently simpler than Grav.
Also based on PHP.
Can build locally and deploy via git.

Trivial to install. Just download, or use Composer to manage PHP dependencies and updates.
Just put md files and other assets in the contents folder and subfolders.
Headers specified as YAML. 

The URLs all start with a "?", but can be rewritten. 
Javascript not supported it seems, but various plugins are available. 
It seems possible to save JS as an asset and call it. 

https://picocms.org
https://github.com/picocms/Pico
https://picocms.org/docs/


Grav vs Pico:
https://www.icdsoft.com/blog/eight-alternatives-to-wordpress/

# Lists
List of top 82 open-source markdown cms projects
https://awesomeopensource.com/projects/cms/markdown

https://medevel.com/18-flat-file-cms-for-enterprise/

https://blog.ssdnodes.com/blog/flat-file-wordpress-alternatives/

# Hugo
The one used by TK is called "Hugo"

https://gohugo.io

This is a static site generator.
See also Jekyll, Hexo etc

I expected it to generate static HTML, but it seems to require a Hugo server to run,

# Grav
The best is Grav?

https://getgrav.org

Written in PHP. Flatfiles. Supports Markdown, HTML or a mix.

---
# 2020-12-08 Ivan Ginovski zoom

Has prepared draft slides; will revise.

Demo login: https://ig-drpl.docker-dev.iqual.ch/de/user/
user: admin
pwd: admin

---
# 2020-12-01 Ivan Ginovski zoom

Created a PHP script to import content using the PageDesigner module.
Drupal (Pathauto) can automatically generate aliases for repositioned web pages.
Drupal pages all have locations of the form .../node/NN.

Will work on draft presentation.
Goal to have a working demo of migration of most of contents.
Maybe share a link to the migrated demo.

---
# 2020-11-24 Ivan Ginovski zoom

Still struggling with import.
IG wants to import via “PageDesigner”

Tried to install ZMS byt did not succeed. Not familiar with Python.

ig-drpl.docker-dev.iqual.ch

Login: https://ig-drpl.docker-dev.iqual.ch/de/user/
user: iqual
pwd: dEAcYCJGtF0eUo8S2yoXOqJsuPEwjR

---
# 2020-11-03 Ivan Ginovski zoom

Found a workaround for exporting the Pier contents.
A PierMigration component will hold the exported contents.


---
# 2020-10-27 Ivan Ginovski zoom

Working on server. Assessing different migration schemes.
Looking at how to dump data from within Pier.

---
# 2020-10-20 Ivan Ginovski zoom

Looking at extracting web pages from within a standard Pier image.
Did an experiment to import HTML from SCG web to Drupal.

Would be ideal to dump Pier pages out in JSON format.

ON: will try to run the SCG Pier on an old laptop.

---
# 2020-10-13 Ivan Ginovski zoom

Looking at ZMS and Drupal. Will try to set up an experiment to import typical SCG pier pages intio each.

---
## Static pages

- generate static web pages directly from Pier ...
- need feasibility study to see how easy this would be

## Dynamic pages (scgbib)

- replace scgbib by JS page

- generate JSON from scgbib on every commit
  - https://tex.stackexchange.com/questions/268294/convert-existing-bibtex-to-bibjson
  - https://citation.js.org
  - https://mkonrad.net/2016/02/18/a-python-script-to-convert-bibtex-to-bibjson.html

- JSON should include a field with the original bibtex
- run a feasibility experiment to see if JS can easily handle a large JSON file (~10MB)
- emulate scgbib URL interface
- emulate GUI
- generate URLs for fixed queries

---
# Tasks

- Identify possible target platforms eg DokuWiki (used by INF)
- Migrate externally (by crawling) or internally (within Squeak image)?
- Explore how to migrate scgbib (reuse old perl implementation? migrate to JS?)

---
# Candidate targets

- ZMS (Unibe standard)
- DokuWiki
- WordPress
- Drupal (PHP)

---

