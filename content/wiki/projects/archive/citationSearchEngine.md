---
Title: 'CiteWise: The Citation Search Engine'
---
#CiteWise: The Citation Search Engine
#Project Idea:

During the writing of a paper, one of the main difficulties is to find the right citation for some claims. For example: 

-  “Dynamically-typed languages are more effective during development time”
-  “Developers spend most of their time in the IDE”
-  “Predicting bugs at the module level is not useful”

Such claims are needed in many situations to build up a nice argument in a paper but only if we put the right citations.

We can do that by looking at what other people used in their papers as references for such claims. In other words, if we have a previous paper using such claims, we can see what citations the author(s) used to support those claims.

#Implementation Roadmap:

The implementation includes:

-  Parse the PDFs of papers (using PDFBox).
-  Extract all the sentences that have citations.
-  Link each sentence with its citation(s).
-  Index those sentences (using Apache Solr).
-  Build a simple web user interface for users to search for claims and citations.

#Contact
[Haidar Osman](%base_url%/staff/Osman) & [Boris Spasojević](%base_url%/staff/Boris-Spasojevic)
