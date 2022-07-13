---
Title: A framework approach to composing heteregeneous applications
---

*A framework approach to composing heteregeneous applications* is a project funded by the [Swiss National Science Foundation](http://www.snf.ch/) (SNSF project # [20-53711.98](http://p3.snf.ch/Project-53711)).

| | |
|---|---|
|!Funding:|313'122.&mdash; SFr.
|!Period|Oct 1, 1998 &mdash; Sept. 30, 2000

#Summary
Modern-day applications are increasingly built from ready-made software components of both fine and coarse granularity. These components typically make architectural assumptions about how communication takes place with other software components. Unfortunately one is often required to integrate components that make different kinds of assumptions, leading to the so-called *architectural mismatch* problem.

Presently there exists a variety of tools, languages and techniques for building systems from components: object-oriented languages, frameworks, 4GLs, scripting languages, user interface builders, middleware, meta-object protocols and so on. There exists also a considerable body of &#8220;best practice&#8221;, such as design patterns, standard software architectures, and various reflective techniques. Much of this work, however, has been produced in different communities, and it is not clear how, if at all, these techniques can be productively combined in a disciplined way to build heterogeneous software systems. 

We propose an approach in which five of these techniques are combined, namely:


-  * Black-box frameworks* provide software components that encapsulate useful functionality
-  * Scripting languages* allow one to specify compactly and declaratively how software components are plugged together to achieve some desired result 
-  *Architectural description languages* are used to explicitly specify architectural styles in terms of the interfaces, contracts and composition rules that components must adhere to in order to be composed 
-  * Glue agents *adapt components that need to bridge architectural styles
-  * Coordination models* provide the coordination media that allow distributed glue agents and components to communicate 

We expect to achieve results in the following areas:


-  Identify, specify and implement glue and coordination abstractions for composing heterogeneous software components 
- Catalogue and analyse architectural mismatch (glue) problems; experimentally apply our techniques to selected case studies 
- Develop formal models to reason about aspects of type (interface) matching, architectural styles (contracts) and coordination (implementation correctness and optimization)
-  Further develop and refine our experimental languages and tools (Piccola, FLO, CoCo)

For more information, please consult the [Research Plan](%assets_url%/download/projectreports/snf98-part2.pdf) of the project [pdf].

#Intermediate Report
The intermediate report covers the period from Oct. 1, 1998 through Sept. 30, 1999.
 

- [Intermediate report](%assets_url%/download/projectreports/snf98-intermediate.pdf) [pdf]
- [Publications](%assets_url%/scgbib/?query=snf99&filter=Year) (papers and theses)

#Final Report
The final report covers the period from Oct. 1, 1999 through Sept. 30, 2000. 

- [Final report](%assets_url%/download/projectreports/snf98-final.pdf) [pdf]
- [Publications](%assets_url%/scgbib/?query=snf00&filter=Year) (papers and theses)
