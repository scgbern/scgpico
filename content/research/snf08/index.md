---
Title: Bringing Models Closer to Code
---

*Bringing Models Closer to Code* is a project funded by the [Swiss National Science Foundation](http://www.snf.ch/) (SNSF project # [200020_121594](http://p3.snf.ch/Project-121594)).

| | |
|---|---|
|<strong>Funding:</strong>|395'304.&#8212; SFr.
|<strong>Period:</strong>|Oct 1, 2008 - Sept. 30, 2010
|<strong>Collaborating teams:</strong>|[Run-time instrumentation group](http://www.inf.usi.ch/projects/ferrari/FERRARI.html), University of Lugano, Switzerland <br/> [REVEAL research group](http://www.inf.unisi.ch/faculty/lanza/), University of Lugano, Switzerland<br/>[RMod group](http://rmod.lille.inria.fr/), INRIA, Lille, France<br/> [Loose Research Group](http://loose.upt.ro/), Politehnica University of Timisoara, Rumania
 
#Keywords
Software evolution; software models; model-driven-engineering; reverse engineering; domain specific languages; dynamic analysis; integrated development environments; model-centric development. 

#Summary
Software models are notoriously disconnected from source code. At the start of a software development project, the emphasis is on eliciting system requirements and defining domain and architectural models. Once development commences, the original models become disconnected from the code that they describe. It becomes increasingly difficult to reestablish traceability links as crucial knowledge of design decisions and user features are implicit in the code.

This situation poses difficulties for developers who need to understand existing code before adding new features or making changes. Furthermore, developers need to communicate with the domain experts and stakeholders using a representation of the system that both parties can understand. The problem is particularly critical for today's software applications which are constantly evolving and being adapted to new requirements, platforms or services.

We propose to investigate four related research tracks that seek to bring models and code closer together:

- *Coordinating models and code.* Many techniques exist to recover models from various software artifacts, but little has been done to capture implicit human knowledge and to make it explicit in the code. Similarly, little effort has been invested in coordinating different models of a software system and detecting patterns implicit in their interconnections. In this track we will (i) explore ways to embed multiple models in code (e.g., by means of annotations) and navigate between these multiple views, and (ii) apply various clustering techniques to mine higher-level abstractions from code and models. The results of this work will yield useful techniques that are directly applicable in the context of the subsequent three research tracks.
- *Embedding domain models in the code.* A well-designed and maintainable software system can be viewed as a set of configurations of software components at various levels of abstraction, each capturing different kinds of domain models. To make domain models explicit in the code, we need to raise them to the level of Domain Specific Languages (DSLs) within the host programming language. We plan to (i) develop an adaptive model for a host language to accomodate multiple DSLs, (ii) validate the model by showing how DSL-aware development tools (browser, debuggers etc.) can then both support and exploit domain models to raise the developer's level of abstraction, and (iii) expose implicit domain models by refactoring the APIs towards domain specific languages (DSLs).
- *Bringing dynamic models to the IDE.* IDEs typically exploit the static software structure while ignoring run-time structures. In this track we plan to (i) explore how the results of run-time analyses can be brought to the IDE to provide a more effective and comprehensive development environment. Run-time information, usage scenarios, and features are examples of the types of information typically missing from an IDE. We will also (ii) carry out empirical studies to validate the effectiveness of run-time analysis techniques for supporting typical development and maintenance tasks.
- *Model-centric development.* As a direct consequence of the preceding three research tracks, we believe development of new software should benefit from the interplay between the various models that are produced on the way to producing the software itself. Unlike model-driven and round-trip engineering approaches where models and code are seen as separate artifacts, we propose to develop an experimental programming environment in which executable models themselves are the primary artifact produced. Software developed in such an environment should be self-describing and self-aware &mdash;- that is, all models are interconnected and are always available to both development and run-time environments. Traceability between models (i.e., from requirements to design decisions) should be explicit in the software itself. As such a system will be self-describing, it will be model-driven at run-time, and can, for example, generate its own user interface and adapt it automatically.

#Intermediate report
The intermediate report covers the period from Oct. 1, 2008 through Sept. 30, 2009.

This project explores various ways of synchronizing software source code with implicit application domain knowledge. The key results achieved in the four tracks of this project in the first year include:

- *Coordinating models and code:* we have developed novel techniques to dynamically adapt software to non-functional requirements expressed declaratively at the level of the application domain, and we have explored several techniques to mine domain knowledge from source code, bug reports, version repositories, and other resources.
- *Embedding domain models in the code:* we have developed a framework, called [Helvetia](%base_url%/research/helvetia), for embedding domain-specification languages into general-purpose host languages, and we have explored various novel applications of source code annotations to express high-level domain concepts.
- *Bringing dynamic models to the IDE:* we have developed novel approaches to integrating dynamic information in the static views of software presented to developers in the development environment, and we have carried out empirical studies to demonstrate the effectiveness of this additional information for supporting typical development and maintenance tasks. We have also developed a novel and efficient back-in time debugger that exploits historical data gathered at run-time.
- *Model-centric development:* we are developing an experimental language platform called [Pinocchio](%base_url%/research/pinocchio) in which the language semantics are specified in a fully reflective way. This will enable radical approaches to model-driven development in which semantic models can be manipulated at run-time.

This research has resulted in 5 journal papers, 11 full papers in international, peer-reviewed conferences, as well as numerous other papers, reports and theses.

For further details see:

- [Intermediate report](%assets_url%/download/projectreports/snf08-intermediate.pdf)
- [Publications](%assets_url%/scgbib/?query=snf09&filter=Year)

#Final report
The final report covers the period from Oct. 1, 2009 through Sept. 30, 2010.
The key results achieved in the four tracks of this project include:

- *Coordinating models and code:* We have developed a technique called live feature analysis for establishing the correspondence between a feature and the code that implements it. Live feature analysis allows us to maintain at runtime a model of a system's features. To enable change at runtime, a system must be self-aware and be able to fully reflect on itself. To achieve this we developed Albedo, a unified approach to structural and behavioral reflection. We have also explored how search- driven-development can improve the understanding of the code by raising the trustability of the search results.
- *Embedding domain models in the code:* We continued the development of the Helvetia platform for embedding domain-specific languages into an existing programming environment by leveraging the underlying representation of the host language and the existing tools. We have extended Helvetia with Language Boxes, which allow language extensions to be scoped to a particular context, and we have developed PetitParser, which enables multiple grammar extensions to be easily composed.
- *Bringing dynamic models to the IDE:* We have extended the developed approaches integrating dy- namic models into the IDE, have empirically analyzed the problems of navigating software systems, and conducted controlled experiments with professional software developers to reveal the effect of the availability of dynamic models in the IDE on developer productivity. These experiments showed that developers can both more quickly and more correctly perform typical software development and maintenance tasks thanks to the access to dynamic models in the IDE.
- *Model-centric development:* We have developed a new Smalltalk environment called Pinocchio in which the application code and interpreter are reified. It allows us to extend and modify the interpreter from within the provided runtime by subclassing its base classes. During the last year we focused on finishing the compiler and runtime so that it can run standard Smalltalk code with reasonable performance. To do so we switched to an opcode-based runtime leaving the code reified as AST nodes only for the first-class interpreters. Then we used the infrastructure to prototype three non-trivial interpreters: a stepping debugger, a parallel debugger and an alias interpreter.

This research of the final year has resulted in 2 journal papers, 8 papers in international, peer-reviewed conferences, as well as numerous other workshop papers, reports and theses.

For further details see:

- [Final report](%assets_url%/download/projectreports/snf08-final.pdf)
- [Publications](%assets_url%/scgbib/?query=snf10&filter=Year)

For more information, please consult the [Research Plan](http://scg.unibe.ch/download/projectreports/snf08-part2.pdf) of the project [pdf].
