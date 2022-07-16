---
Title: Author Pages
---
#Author Pages
#Author Pages
Fixed queries should suffice for most needs. To generate a personal publication list, however, a naive query may also return papers authored by other people appearing in a volume edited by the person in question. An author query will return just those entries for papers authored by that person, plus entries for volumes edited by that person, but with no author field. To achieve this, the query field is first used to retrieve all candidate entries. Then a second regex parameter is used to match exactly the author field or the editor field without authors.
```
author=<regexString>
```
For example:
```
+/scgbib/author|query=Olthoff|author=Olthoff|hideControls=true+
```
yields:

---
[Author Page](%assets_url%/scgbib/?query=Olthoff&filter=Year)
In this case the query and the author regex are the same, but they need not be.
You may also create a dedicated component of type *Author Page* and configure it as you like. See, for example: [Oscar Nierstrasz &mdash; Publications](%assets_url%/scgbib/?query=Nierstrasz&filter=Year).
