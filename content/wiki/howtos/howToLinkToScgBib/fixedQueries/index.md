---
Title: Fixed Queries
---

#Fixed Queries
To *embed* the result of a query, another approach is needed, since scgbib query results cannot be directly embedded.

One approach is to create a Component subpage of type *Fixed Query*, fill in its parameters as required, and then embed that page wherever you like. An example is the [SCG Publications](%assets_url%/scgbib/?query=scg-pub&filter=Year) page.

Even simpler, you may link to the existing fixed query page and override its parameters as follows:
```+/scgbib/fixedquery|query=Duca06b+
```
which yields:

---
[Fixed Query](%assets_url%/scgbib/?query=*&filter=Year)

---
**NB:** Escaped or-bars can now be used within queries, so you can write:
```+/scgbib/fixedquery|query=Miln80a\|Miln92b|hideControls=true+
```
[Fixed Query](%assets_url%/scgbib/?query=*&filter=Year)
