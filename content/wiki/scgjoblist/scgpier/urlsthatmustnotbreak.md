---
Title: URLs that must not break
---
#URLs that must not break
The following legacy URLs should either be maintained as they are, or should be redirected to new locations once the scg web is fulling migrated to pier (see [SCG Pier tasks](%base_url%/wiki/scgjoblist/scgpier)). We will use this page as a test case for a link-checker to make sure no URLs are broken. Please add to this list:


-  All publications archive URLs, for example:
	-  [http://www.iam.unibe.ch/~scg/Archive/Papers/Nier08bChangeEnabledSoftware.pdf](http://www.iam.unibe.ch/~scg/Archive/Papers/Nier08bChangeEnabledSoftware.pdf)
	-  [http://www.iam.unibe.ch/~scg/Archive/PhD/denker-phd.pdf](http://www.iam.unibe.ch/~scg/Archive/PhD/denker-phd.pdf)

-  Research project descriptions, for example:
	-  [Bringing Models Closer to Code](%base_url%/research/snf08)

-  [/download/oorp](%assets_url%/download/oorp)
-  [http://www.iam.unibe.ch/~scg/Src/Doc/htgrep.html](http://www.iam.unibe.ch/~scg/Src/Doc/htgrep.html)
-  [/download/petitpetri](%assets_url%/download/petitpetri) redirect to [/download/petitpetri](%base_url%/download/petitpetri)


---

# In General
Checkout the Papers folder from SCG subversion and do

-  grep -R smallwiki 
-  grep -R iam.unibe.ch

# Toon

-  [http://smallwiki.unibe.ch/pygirl](http://smallwiki.unibe.ch/pygirl)(.\*)
-  [http://smallwiki.unibe.ch/schemetalk](http://smallwiki.unibe.ch/schemetalk)(.\*)
-  [http://smallwiki.unibe.ch/toonverwaest](http://smallwiki.unibe.ch/toonverwaest)(.\*)

# AA

-  [http://www.iam.unibe.ch/~scg/Resources/JExample](http://www.iam.unibe.ch/~scg/Resources/JExample)(.\*)
-  [JExample](%base_url%/research/jexample)(.\*)
-  [/download/wasdett](%assets_url%/download/wasdett)(.\*)
-  [http://scglectures.unibe.ch/p2](http://scglectures.unibe.ch/p2)(.\*)
-  [http://popeye.unibe.ch/svn/p2/Common](http://popeye.unibe.ch/svn/p2/Common)(.\*)
-  [https://www.iam.unibe.ch/scg/svn_repos/Sources](https://www.iam.unibe.ch/scg/svn_repos/Sources)(.&#42;)
-  [http://www.iam.unibe.ch/~scg/cgi-bin/scgbib.cgi?query=](http://www.iam.unibe.ch/~scg/cgi-bin/scgbib.cgi?query=)(akuhn|.\*)
-  [http://smallwiki.unibe.ch/adriankuhn](http://smallwiki.unibe.ch/adriankuhn)(.\*)
-  [http://smallwiki.unibe.ch/suite2009](http://smallwiki.unibe.ch/suite2009)(.\*)
-  [http://smallwiki.unibe.ch/jexample](http://smallwiki.unibe.ch/jexample)(.\*)
-  [http://smallwiki.unibe.ch/fontsizebuttons](http://smallwiki.unibe.ch/fontsizebuttons)(.\*)
-  [http://smallwiki.unibe.ch/fame](http://smallwiki.unibe.ch/fame)(.\*)
-  [http://smallwiki.unibe.ch/softwarecartography](http://smallwiki.unibe.ch/softwarecartography)(.\*)
-  [http://smallwiki.unibe.ch/wasdett2008](http://smallwiki.unibe.ch/wasdett2008)(.\*)
-  [http://smallwiki.unibe.ch/spy](http://smallwiki.unibe.ch/spy)(.\*)
-  [http://smallwiki.unibe.ch/rbcrawler](http://smallwiki.unibe.ch/rbcrawler)(.\*)
-  [http://smallwiki.unibe.ch/cells](http://smallwiki.unibe.ch/cells)(.\*)

And maybe more, I am not sure if I have gotten all. I just went through the list of 50 most visited SCG pages. What I suggest is to keep a log of all missed requests the new site, such that we can learn what 
we have forgotten!

PS, an important part of the (.\*) is that Smallwiki RSS feeds do not break. I often provide them as explicit links to people.

# md

-  [NewCompiler](%base_url%/research/newcompiler)
-  [Reflectivity](%base_url%/research/reflectivity)
-  [http://www.iam.unibe.ch/~scg/Research/ByteSurgeon/](http://www.iam.unibe.ch/~scg/Research/ByteSurgeon/)

# dr

-  [http://smallwiki.unibe.ch/hermion](http://smallwiki.unibe.ch/hermion)(.\*)
-  [Hermion](%base_url%/research/hermion)(.\*)

# TG

-  [http://smallwiki.unibe.ch/moose/famoosr2007](http://smallwiki.unibe.ch/moose/famoosr2007)
