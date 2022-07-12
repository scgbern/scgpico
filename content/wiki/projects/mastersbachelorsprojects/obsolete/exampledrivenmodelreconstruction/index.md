---
Title: Example-Driven Model Reconstruction
---

One of the biggest bottlenecks in reverse engineering is parsing source code to build a model. It can take weeks or months to build a custom parser to build such models for a complex language. One approach to speed up the process is "Parsing by Example", explored in a previous Masters project. Instead of hand-crafting a parser, the parser is generated from mappings opf code fragments to model elements. The biggest problem with the technique is that the generated grammars may be ambiguous. There are various paths to explore to make parsing by example really fly. One of these is to make use of Earley parsing, which deals with ambiguous grammars in a more robust way. This project would develop new techniques to make example-driven model reconstruction practical, and apply it to industrial code in languages for which no model-building parser exists.
Links:

-  [Earley Parsing](%assets_url%/scgbib/?query=Earley&filter=Year)
-  [Parsing by Example](%assets_url%/scgbib/?query=Kobe05a&filter=Year)
-  [Moose](http://moose.unibe.ch/)
Contact: [Oscar Nierstrasz](%base_url%/staff/oscar)
