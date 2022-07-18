---
Title: Link to an entry
---
#Link to an entry
#Link to an entry
You can link to an scg bib entry by copying the base url of a query result from the [scgbib](%assets_url%/scgbib).
For example:
```
[Traits theses](/scgbib?query=traits+thesis)
```
yields:
[Traits theses](/scgbib?query=traits+thesis)

Various parameters can be configured. The query field may be either a set of keywords that must be present, or a regular expression. (The query engine makes an educated guess which it is, and reverts to keywords if the supposed regex does not compile.) Note that regexes are slower than to match than keywords.
The following parameters can be set:
```
query=<keywords|regexString>
caseSensitive=false|true
sortBy=author|year|category
display=summary|abstract|bibtex
hideControls=false|true
```

Example:
```
[Traits theses bibtex](%assets_url%/scgbib/?query=traits+thesis&filter=Year)
```
[Traits theses bibtex](%assets_url%/scgbib/?query=traits+thesis&filter=Year)

