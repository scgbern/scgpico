---
Title: Detecting Missing Information
---

#Detecting Missing Information
*Missing Information* is another special query component intended for maintenance purposes. Here the additional parameter is a regex specifying information that each entry matching the query is also expected to match.
```info=<regexString>
```
In most cases the regex required is a or-query.
Here are several prepackaged queries:

-  [SCG Publications Missing Abstracts](%base_url%/publications/missingAbstracts)
-  [SCG Publications Missing PDF](%base_url%/publications/missingPDF)
-  [SCG Publications Missing DOI](%base_url%/publications/missingDOI)
**NB:** Now that Pier supports escaped or-bars within queries, a [fixed query](%base_url%/wiki/howtos/howToLinkToScgBib/fixedQueries) can be used instead of this component.
