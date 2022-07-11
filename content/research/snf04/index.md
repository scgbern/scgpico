---
Title: A Unified Approach to Composition and Extensibility
---

*A Unified Approach to Composition and Extensibility* is a project funded by the [Swiss National Science Foundation](http://www.snf.ch/) (SNSF project # [200020-105091/1](http://p3.snf.ch/Project-105091)).

|!Funding:|264'915.&mdash; SFr.
|---|---
|!Period:|Oct 1, 2004 - Sept. 30, 2006
 
#Summary


Real software systems constantly undergo change. For this reason, systems must be *extensible*, so that new features can be added without breaking existing functionality, and they must be *composable*, so that features can be recombined to reflect changing demands on their architecture and design. Object-oriented programming languages excel at expressing arbitrary kinds of models of domain concepts and software systems: the mechanism of *inheritance* is particular useful for specifying incremental extensions to models. However, models built in this way quickly become complex and fragile when they grow to a certain size. The goal of this project is to investigate means to support composability and extensibility in object-oriented languages, while reducing fragility.

For more information, please consult the [Research Plan](%assets_url%/download/projectreports/snf04-part2.pdf) of the project [pdf].

 
#Intermediate Report


The intermediate report covers the period from Oct. 1, 2004 through Sept. 30, 2005.

Some of the most significant results include (i) both formal specification and analysis of [traits](%base_url%/research/traits), and practical experience using traits to refactor a Smalltalk kernel, (ii) formal specification of classboxes as well as practical experience applying [classboxes](%base_url%/research/classboxes) to various large case studies, (iii) the development of a new framework to support run-time behavioural reflection, and (iv) the elaboration of a taxonomy of unit tests and the development of a corresponding framework and tool for composing tests from simpler tests. 

 

- [Intermediate report](%assets_url%/download/projectreports/snf04-intermediate.pdf) [pdf]
- [Publications](%base_url%/scgbib) (papers and theses)

#Final Report

The final report covers the period from Oct. 1, 2005 through Sept. 30, 2006.

Significant results have been achieved in the four areas covered by this project. (i) [traits](%base_url%/research/traits) offer a fine-grained mechanism for composing classes from reusable components. We have developed an approach to incorporate traits into statically-typed languages like Java and C#. The traits model has been extended to incorporate state, while retaining the key properties of the stateless traits model. traits have also been included in the current distribution of Squeak, an open-source Smalltalk system. (ii) [classboxes](%base_url%/research/classboxes) offer a module system that confines the visibility of extensions to selected clients. We have prototyped an environment to support the development of classboxes from the programmer's perspective. (iii) "diamond" concerns foundational work in the development of programming mechanisms to support software evolution. We have developed a framework to support high-level behavior reflection, a "back-in-time" debugger capability, and an approach to reason about aliasing in evolving systems. (iv) Eg is a framework for composing unit tests in a rigorous way. We have elaborated the Eg meta-model and developed an experimental environment to support the construction of tests and units under test according to this meta-model. 


- [Final report](%assets_url%/download/projectreports/snf04-final.pdf) [pdf]
- [Publications](%base_url%/scgbib) (papers and theses)
