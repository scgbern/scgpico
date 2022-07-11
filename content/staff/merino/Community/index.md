---
Title: Community
---

#Why not extracting the data from the Web?
Because the information is not reliable and is spread in different sites. Google Scholar although provides a feature for filtering papers from a specific venue, it returns many records that do not belong to it and missed others. Using IEEE Explore or ACM Digital Library can provide more accuracy but still there are missing proceedings (e.g. VISSOFT 2003), they do not seem to provide an API to programatically extract data and retrieving the data directly from the site seems prone to error. So our approach will be to extract the data directly from a corpus of PDF files.

##What did not work

- Pdf-extractor only returned the title and references, but not authors.
- Cb2bib: did not find an installer

#Corpora

- Server: yogi
- Folder: /srv/scgresources.unibe.ch/Literature
- Folders must contain the acronym of the name of the venue followed by the year YYYY.

#Extract text from PDF files

- Java Project: CommunityDataExtractor (uses PDFBox with preflight, Java 1.7)
- Workspace: Documents/workspace-PDFBox/CommunityDataExtractor
- Class: PDFExtractor
*e.g.*
```Explora: A Visualisation Tool
for Metric Analysis of Software Corpora
Leonel Merino
Software Composition Group
University of Bern
Bern, Switzerland
merino@iam.unibe.ch
Mircea Lungu
Software Composition Group
University of Bern
```

#Parse text for extracting title and authors.

- Uses ParsCit (Perl based)
- I had to install CRF\+\+ (can be done using brew)
- While trying to run it, I had to install some libs using cpan (cpan install ...)
- Installed in /Downloads/parscit/bin
- Running it for one file: ./headExtract.pl text output
- Running it for the entire corpus: ./processHeaders
*e.g.*
```<?xml version="1.0" encoding="UTF-8"?>
<algorithm name="ParsHed" version="110505">
<variant no="0" confidence="0.810110">
<title confidence="0.9953645">Explora: A Visualisation Tool for Metric Analysis 
of Software Corpora</title>
<author confidence="0.991777">Leonel Merino</author>
<affiliation confidence="0.9998805">Software Composition Group University 
of Bern</affiliation>
<address confidence="0.978505">Bern, Switzerland</address>
<email confidence="0.976031">merino@iam.unibe.ch</email>
<author confidence="0.985589">Mircea Lungu</author>
<affiliation confidence="0.9998005">Software Composition Group University 
of Bern</affiliation>
```

#Extract title and authors from XML file (Pharo).
##Using XMLSupport
```Gofer new
  squeaksource: 'XMLSupport'; 
  package: 'ConfigurationOfXMLSupport';
  load.

(Smalltalk at: #ConfigurationOfXMLSupport) 
perform: #loadDefault.
```

##Analysing one file
```file := 'output.head'.
xml := XMLDOMParser parseFileNamed: file.
title := ((xml allElementsNamed: #title) collect:[:e| e nodes first ]) 
first asString.
authors := ((xml allElementsNamed: #author) collect:[:e| e nodes first]) 
asOrderedCollection.
```

##Running the visualisation
```VCExtractor new visualise
```

##First attempt. ICSM (from '95 to 2013: 15 editions)
![Icsm](%assets_url%/files/4d/1tq35wb89yjbk2kiwex8i0gwaj6lke/icsm-1.png)
