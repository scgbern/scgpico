---
Title: Meta-models and Tools for Evolution Towards Component Systems
---

*Meta-models and Tools for Evolution Towards Component Systems* is a project funded by the [Swiss National Science Foundation](http://www.snf.ch/) (SNSF project # [20-61655.00](http://p3.snf.ch/Project-61655)).

| | |
|---|---|
|!Funding:|216'614.&#8212; SFr.
|!Period:|Oct 1, 2000 - Sept. 30, 2002
 
#Summary
All successful software systems evolve to meet changing requirements. Without continual reengineering, however, such systems necessarily suffer from *architectural drift*, as their original design no longer matches new business goals and requirements. As a consequence, they become increasingly complex and fragile, leading to ever higher maintenance costs. 

We propose a *component-based approach* to software evolution, in which stable software artifacts are identified over time, and are migrated towards components and component architectures. The key to the approach is a *component meta model* for modelling and analysing evolving software systems. This meta model facilitates *component migration *tools and techniques. As a successful software system matures, instead of becoming more complex and fragile, its architecture gradually migrates towards a configuration of software components, which can be more easily reconfigured and adapted than a typical legacy system. To achieve this flexibility, however, a component-based system requires a suitable *compositional infrastructure* for specifying component configurations and the compositional abstractions that hold the components together. 

We propose to develop (i) a component meta model for modelling software systems that extends existing standards (such as UML) with concepts required to support evolution, focusing on such issues as non-functional requirements and software dependencies. Based on this meta model, we will develop (ii) component migration tools and methods that will help to identify candidate components, identify and resolve architectural and design drift, and support transformation to component-based software structures. We will focus on software metrics and visualization to support analysis, and language-independent refactorings to support transformation. Component migration methods will be documented as reverse and reengineering patterns. Finally, we propose to develop (iii) a compositional infrastructure to support architectural specification, and run-time configuration and evolution, using the agent-based framework of the Piccola composition language. 

For more information, please consult the [Research Plan](%assets_url%/download/projectreports/snf00-part2.pdf) of the project [pdf].
 
#Intermediate Report

The intermediate report covers the period from Oct. 1, 2000 through Sept. 30, 2001.

This project focuses on tools and models to support the transition towards component-based software development. The following results have been achieved in the first year:
 

- *Reengineering:* we are defining a meta-meta-model that will allow reengineering tools to express and exploit inferred entities from the code such as components, architectures and enhanced relationships.
- *Reverse engineering:* We have developed a new graphical representation called class blueprints to support the understanding of classes. We have also been developing and applying QSoul, a logic programming layer for object-oriented languages, to express and reason about relationships between source code and documentation.
- *Software Composition:* We have stabilized the definition of the Piccola composition language, formalized its semantics, and developed a novel language bridging strategy that allows components to be seemlessly integrated at the composition level.
- *Components for Embedded System:* We have defined a component model for embedded systems and field devices that expresses real-time and resource constraints.

For further details, please see:


- [Intermediate report](%assets_url%/download/projectreports/snf00-intermediate.pdf) [pdf]<li[Publications](%assets_url%/scgbib/?query=snf01&filter=Year) (papers and theses)

#Final Report

The final report covers the period from Oct. 1, 2001 through Sept. 30, 2002.

This project focuses on tools and models to support the transition towards component-based software development. The following results have been achieved in the second year:
 

- *Component Meta-modeling.* A reverse-engineering environment has been developed that supports various forms of analysis and visualization
- *Reengineering.* A collection of reengineering techniques has been published in the form of a book.
- *Evolution. *Various tools and techniques have been developed to understand and to implement software evolution.
- *Composition languages.* A formal semantics of software composition has been elaborated.

For further details, please see:
 

- [Final report](%assets_url%/download/projectreports/snf00-final.pdf) [pdf]
- [Publications](%assets_url%/scgbib/?query=snf02&filter=Year) (papers and theses)
