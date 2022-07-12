---
Title: Bibliography PDF crawler
---

The Software Composition Group maintains a BibTeX (http://www.bibtex.org/) 
bibliography file containing references to relevant work throughout the group, 
including references used in Bachelor's, Master's, PhD theses, and research 
papers.

BibTeX entries may contain a wide range of fields, some of which can help 
localize a copy of the referenced work. An example entry looks like this:

```@Book{Zobe04a,
  author    = {Zobel, Justin},
  title     = {Writing for Computer Science},
  year      = {2004},
  edition   = {Second},
  publisher = {Springer-Verlag},
  isbn      = {1-85233-802-4},
  keywords  = {book, scglib},
}
```

However, often looking up a document still includes visiting some 
webpages and trying to localize a pdf from various sources. The key file 
is sometimes used to store a reference to a pdf or other file. However, this 
is rarely the case in the current SCG bibliography file.

Some tools exist that look up and fetch files from a given entry. One such 
tool is *JabRef* (http://www.jabref.org/), a bibliography manager that 
includes features that can obtain pdfs from sources like *GoogleÂ Scholar* 
(http://scholar.google.ch/), *arXiv* (https://arxiv.org/), etc. This, however, 
is currently only usable through the GUI and it is hardly feasible to obtain a 
large number of pdfs for a library as big as the SCG one.

In this project, we aim to implement a tool with a simple command-line 
interface that allows users to automatically fetch files for given entries, 
rename them according to a given pattern, and update the file field in 
the bibliography. The tool should be able to fetch pdfs from \''Google 
Scholar*, *arXiv*, *IEEExplore* (http://ieeexplore.ieee.org/), and *ACM 
Digital Library\'' (http://dl.acm.org/). One option to implement this project 
is to fork JabRef.

Contact: [Claudio Corrodi](%base_url%/staff/Corrodi)
