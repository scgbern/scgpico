---
Title: Analyzing, Capturing and Taming Software Change
---
#Analyzing, Capturing and Taming Software Change
*Analyzing, Capturing and Taming Software Change* is a project funded by the [Swiss National Science Foundation](http://www.snf.ch/) (SNSF project # [200020-113342](http://p3.snf.ch/Project-113342)).

| | |
|---|---|
|<strong>Funding:</strong>|260'152.&mdash; SFr.
|<strong>Period</strong>:|Oct 1, 2006 - Sept. 30, 2008
 
#Keywords
Software evolution; programming language design; reverse-engineering; change impact analysis; first-class contexts.

#Summary
Complex software systems must change in order to keep pace with changing needs and requirements. Curiously, however, modern programming languages and environments provide little support for the fact that the systems being built will inevitably change. In fact, more emphasis is placed on mechanisms to enforce consistency and to limit the effects of change than on enabling change.

This research proposal targets the following questions:


- How can we *encapsulate change* in order to better specify, manipulate and control it?
- How can we *manage the scope of change*, especially in a running system?
- How can we *assess the impact of change* in a complex system?
- How can we *exploit change* to reveal implicit trends and emergent software artifacts?

To answer these questions, we propose to (i) introduce programming language constructs to package incremental modifications to complex software systems, and use these constructs to express both low-level (syntactic) and high-level (semantic) changes, (ii) develop a scoped approach to behavioural and structural reflection in which the visibility of reflective features, and thus of changes, can be controlled at a fine level of granularity, (iii) explore techniques for tracing the impact of changes back to their source by monitoring the flow of object references in a running system, and (iv) analyze the evolution of the software and related artifacts to identify higher-level semantic entities.

For more information, please consult the [Research Plan](%assets_url%/download/projectreports/snf06-part2.pdf) of the project [pdf].

#Intermediate Report
The intermediate report covers the period from Oct. 1, 2006 through Sept. 30, 2007.

Significant results have been achieved in the following four areas:


- *Changeboxes* &mdash; we implemented a [prototype of changeboxes](http://smallwiki.unibe.ch/changeboxes/) to encapsulate and express changes to complex software systems.
- *Scoped Reflection* &mdash; we implemented [a reflection framework](%base_url%/research/reflectivity) that supports a flexible and controlled instrumentation of a software system at runtime. Using our framework, we built flexible dynamic analysis tools and a pluggable type system for a dynamically typed language.
- *Object Flow Analysis* &mdash; we developed a novel object-centric dynamic analysis technique that tracks how objects are passed around a system at runtime. This type of information provides a new perspective of what how object-oriented systems behave at runtime. We have applied this analysis technique to detect runtime dependencies between software features and to support debugging activities.
- *Evolution Analysis* &mdash; we defined analysis techniques and extensions to our reverse engineering platform to model the developers and investigate their role in the life-cycle of a software system. We also implemented extensions to a development environment to integrate reverse engineering results directly in the environment where the developer works on a system's source code.
For further details see:

- [Intermediate report](%assets_url%/download/projectreports/snf06-intermediate.pdf) [pdf]
- [Publications](%assets_url%/scgbib/?query=snf07&filter=Year) (papers and theses)

#Final Report
The final report covers the period from Oct. 1, 2007 through Sept. 30, 2008.

In this project we investigated means to understand and enable the evolution of software systems. Some of the most significant results include: 


- *Changeboxes* &mdash; we have reported on a prototype implementation of a system for managing changes to running software applications, and we have explored ways to dynamically adapt the behaviour of software entities in response to changes in the run-time context.
- *Scoped Reflection* &mdash; we have refined our approach to partial behavioural reflection to exploit a runtime model of the source code. This enables very fine-grained reflection at the sub-method level, which is useful for application ranging from detailed dynamic analysis to language extensions such as pluggable type systems.
- *Object Flow Analysis* &mdash; we have applied our infrastructure for object flow analysis to aid in the post-hoc development of unit tests for existing applications, and we have extended our support for object flow analysis to the virtual machine level, thus making novel applications such as back-in-time debuggers practical and efficient.
- *Evolution Analysis* &mdash; we have explored various ways of bringing information about the run-time behaviour of software entities and the long-term evolution of software to the developer, and we have begun to assess how well this information can support common developer tasks.
For further details see:

- [Final report](%assets_url%/download/projectreports/snf06-final.pdf) [pdf]
- [Publications](%assets_url%/scgbib/?query=snf08&filter=Year) (papers and theses)
