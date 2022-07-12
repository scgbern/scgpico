---
Title: Design
---

#Design
The source code resides at [http://www.squeaksource.com/Citezen.html](http://www.squeaksource.com/Citezen.html) in the package Citezen-Pier. Model classes are shown below in yellow, view classes in pink, Pier/Seaside classes in blue, and Citezen/Magritte classes in green.

A BibFile is a Pier Structure pointing to a bibtex file on the server. It holds a timestamp noting the last time the file was loaded. If the file changes, it will be reloaded. There should be just one BibFile per bibtex file. The BibFile splits the bibtex file (via a MAReferenceFileModel) into a BibList of BibEntry objects, each of which holds the text of a single bibtex entry. A BibEntry will lazily generate a parsed Citezen CZEntry if it is needed, i.e., to be rendered.

A BibFile is rendered by a BibFileView. The scgbib on this site is rendered at [/scgbib](%assets_url%/scgbib/?query=&filter=Year). This interface generates a QuerySpec, which holds all the query parameters and evaluates the query to produce a QueryResult, which is rendered by the various interfaces. Note that a BibFileView is a kind of Pier component that cannot be embedded, which is why we need the other view classes.

A QueryBox is a simple widget that displays an input box and forwards its result to the BibFileView.

A FixedQuery can be used to configure a fixed QuerySpec. Note that the QueryResult has a timestamp too, so it will only be reevaluated if the bibtext file changes. AuthorPage and MissingInfoPage provide additional parameters to AuthorQuerySpec and MissingInfoSpec for complex queries described earlier.

![Pier Bib UML](%assets_url%/files/75/hdp0dx4812qr2faovxi19ns0bc5lkh/PierBibUML.png)
