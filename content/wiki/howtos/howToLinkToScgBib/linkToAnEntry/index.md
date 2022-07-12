---
Title: Link to an entry
---

#Link to an entry
You can link to an scg bib entry by copying the base url of a query result from the [/scgbib](%assets_url%/scgbib/?query=&filter=Year). You can remove the Seaside session gunk if you want, but it is not necessary.
For example:
```*Traits theses>http://scg.unibe.ch/scgbib?query=traits+thesis*
```
yields:
[Traits theses](http://scg.unibe.ch/scgbib?query=traits+thesis)

Within the scg pier, you can also remove the http://... stuff, but then you must use wiki notation for the parameters, as follows:
```*Traits theses>/scgbib|query=traits thesis*
```
yields: [Traits theses](%assets_url%/scgbib/?query=traits thesis&filter=Year)

Various parameters can be configured. The query field may be either a set of keywords that must be present, or a regular expression. (The query engine makes an educated guess which it is, and reverts to keywords if the supposed regex does not compile.) Note that regexes are slower than to match than keywords.
The following parameters can be set:
```query=<keywords|regexString>
caseSensitive=false|true
sortBy=author|year|category
display=summary|abstract|bibtex
hideControls=false|true
```

Example:
```*Traits theses bibtex>/scgbib|query=traits thesis|display=bibtex|hideControls=true*
```
[Traits theses bibtex](%assets_url%/scgbib/?query=traits thesis&filter=Year)

