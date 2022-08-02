---
Title: Implementing a Citation Search Engine in JavaScript
---
#Implementing a Citation Search Engine in JavaScript
The SCG web site includes a citation search engine called [scgbib](%base_url%/scgbib) implemented on the server side.
In the current implementation, users enter a simple text query, and the search engine displays all matching bibliography entries formatted as HTML.

The current database is a 5MB text file in [bibtex](https://en.wikipedia.org/wiki/BibTeX) format.
The database resides in a git repo available at git://scg.unibe.ch/scgbib.
The server caches the file and reloads it whenever it detects that the file has been updated.

Whenever the user enters a new query, or requests the results to be formatted in a different way (e.g., by author, by year, including abstracts, etc.), a new query is generated and evaluated on the server.
This creates a considerable delay for each request.

The idea of this project is to reimplement the search engine on the client-side in JavaScript.
The first time the search engine is started, the bibtex data file will be loaded into the client's browser.
Afterward, every new query or formatting request will be evaluated directly on the client, which sahould result in a considerable speedup.

As part of the project, the following questions should be addressed:


-  Is it reasonable to expect such a speedup? Implement a simple prototype that loads a 5MB file in a client browser, and evaluate some benchmarks to see how quickly the data can be queried and formatted.
-  Should the database be transferred in bibtext format, or pre-processed to JSON? In the first case, we could use tools like [bibtex-js](https://github.com/digitalheir/bibtex-js) to parse and translate bibtex on the fly, or in the second case, we could use [citation.js](https://citation.js.org) or [Pandoc](https://pandoc.org) to translate bibtex to JSON on the server, avoiding any parsing on the client.
-  What is the best way to query the database? Is something like vQuery.grep enough, or should we use some kind of client-side JSON database?

See also: [How to link to the SCG Bibliography](%base_url%/wiki/howtos/howToLinkToScgBib)

Contact: [Oscar Nierstrasz](%base_url%/staff/oscar)
