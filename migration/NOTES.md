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
