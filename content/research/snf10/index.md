---
Title: Synchronizing Models and Code
---
#Synchronizing Models and Code
*Synchronizing Models and Code* is a project funded by the [Swiss National Science Foundation](http://www.snf.ch/) (SNSF project # [200020_131827](http://p3.snf.ch/project-131827)).

| | |
|---|---|
|<strong>Funding:</strong>|337,337.&#8212; SFr.
|<strong>Period:</strong>|Oct 1, 2010 - Dec. 30, 2012
|<strong>Collaborating teams:</strong>|[REVEAL research group](http://www.inf.unisi.ch/faculty/lanza/), University of Lugano, Switzerland<br/>[RMod group](http://rmod.lille.inria.fr/), INRIA, Lille, France<br/> [Loose Research Group](http://loose.upt.ro/), Politehnica University of Timisoara, Rumania
 
#Keywords
Software evolution; Reflection; Meta-modeling; Context-oriented programming; Clone detection; Software architecture; Reverse engineering

#Summary
Successful software systems are under constant pressure to adapt to changing circumstances. Software adaptations take many forms, are of varying granularity, and may need to take effect over extreme variations in time scale. Running software systems are often subject to fine-grained, short-term adaptation to available resources and run-time context. Modest requirements changes typically provoke medium-grained, medium and long-term evolution of software source code, with consequent short-term adaptation of running software. Deeper requirements changes can provoke coarse-grained, long-term adaptation at the architectural level.

In each of these cases we are faced with the challenge of keeping the source code and the running software synchronized with changes in the higher-level domain and requirements models. This synchronization, however, is often difficult because current languages and runtime systems assume global consistency. They cannot cope with typical inconsistencies of systems with rapidly changing requirements, such as unpredictable variations in the execution environments, inconsistent versions of components, or dispersed code sources.

In this project we propose to study novel techniques to keep software systems synchronized with models in the face of varying granularities of change over different time scales.


-  *Dynamic meta-objects:* A running system should be able to dynamically respond to changes in its environment (fine-grained and short-term adaptations). Most common approaches to realize run-time adaptation are low-level, fragile, and unsuitable for composition. We propose to address these problems by means of dynamic meta-objects. These meta-objects will manipulate high-level representations of an object's behavior, they can be introduced on a per-object basis, and they can be composed to address multiple adaptations at a time.


-  *First-class, active contexts:* A software system needs to be able to locally and incrementally update code and program state (medium-grained and medium-term adaptations). Running applications must increasingly cope with interface and data representation mismatches. Instead of placing strict barriers between software components of different versions, we propose to associate versions to first-class, active contexts. A running object that enters such a context may need to be dynamically updated to reflect different versions of interfaces, behavior, or even state. Objects may even be in multiple contexts at once, yet still behave in a predictable way.


-  *Linked, active source code:* Current software development tools fail to address synchronization of code shared between independent systems (medium-grained and medium-term as well as long-term adaptations). As software evolves, libraries, components and even fragments are frequently duplicated, adapted and specialized across software projects. Instead of treating software source code as passive text, we propose a novel approach in which source code is linked to other source code, to other relevant semantic information, and to high-level models. We plan to draw inspiration not only from sites such as Wikipedia as possible models for linked software, but also from popular social networking sites.


-  *Polyglot systems modeling and analyses:* Novel analyses are needed to help software architects assess the impact of changes (coarse-grained and long-term adaptations). These analyses need to account for sub-systems built with diverse technologies and programming languages. We propose to analyze these “polyglot” systems focusing on the technologies involved. To detect hidden architectural dependencies between diverse sub-systems we need to develop a new meta-model that captures and connects the idiosyncrasies of each involved technology. We then plan to research novel metrics-based visualizations to support analyses such as the detection of architectural patterns.

For more information, please consult the [Research Plan](%base_url%/download/projectreports/snf10-part2.pdf) of the project [pdf].


---

#Intermediate report
The intermediate report covers the period from Oct. 1, 2010 through Sept. 30, 2011.

This project explores various ways of synchronizing software source code with implicit application domain knowledge. The key results achieved in each of the tracks of this project in the first year include:


- *Dynamic meta-objects:* A running system should be able to dynamically respond to changes in its environment (fine-grained and short-term adaptations). Most common approaches to realize runtime adaptation are low-level, heterogenous, and unsuitable for composition. We have developed Bifröst which models Dynamic meta-objects. Dynamic meta-objects provide the means for a clear and simple interface where objects and meta-objects coexist. Meta-objects define adaptations on any object, including meta-objects, providing a homogenous approach. As a result of the application of Bifröst model we were able to address challenging problems in a unified manner. We have proposed a dynamic reuse approach called talents. Domain-specific profiling was developed to address the gap between traditional profilers and domain abstractions. We developed Subjectivity which subsumes existing subjective behavior approaches. All these approaches have been realized as working applications which have been used on real world systems. We have also published on each of this approaches on international reviewed conferences and journals.
- *First-class, active contexts:* To be safe, dynamic updates are usually conducted globally to the system, and need to be well-timed. Instead, first-class contexts enable to incrementally update running applications which relaxes the timing constraint. Contexts can be loaded, instantiated and activated programmatically. The behavior and state of objects is dynamically adapted to reflect the active context and objects can by consequence safely interoperate, even when several contexts coexist. We have defined a Smalltalk dialect which implements first-class contexts, and built an initial version of ActiveContext which demonstrates the benefits of our approach. We have also published the details of the approach in a peer-reviewed international workshop.
- *Linked, active source code:* Current software development tools fail to address synchronization of code shared between independent systems (medium-grained and medium-term as well as long-term adaptations). As software evolves, libraries, components and even fragments are frequently duplicated, adapted and specialized across software projects. We have built up a database of all versions of all source code on the Squeaksource repository. This enables us to connect identical source snippets across repositories. It also allows us to name the amount of code duplication in the ecosystem, across repositories. To ease the implementation of this project, we improved on current dependency injection frameworks by making ours part of the programming language. We have brought this approach to both Java and Smalltalk. As a result, our code is more testable and more modular.

This research has resulted in 9 full papers in international, peer-reviewed conferences, 6 peer-reviewed international workshop papers, and several theses.

For further details see:

- [Intermediate report](%assets_url%/download/projectreports/snf10-intermediate.pdf)
- [Publications](%assets_url%/scgbib/?query=snf11&filter=Year)


---

#Final report
The final report covers the period from Oct. 1, 2011 through Dec. 31, 2012.

This project explores various ways of synchronizing software source code with implicit application domain knowledge. The key results achieved in each of the tracks of this project are as follows:

- *Dynamic meta-objects:* In this track we have explored the use of dynamic meta-objects to manipulate and adapt high-level representations of running software systems, thus providing an infrastructure for keeping applications in sync with their meta-level representation. We have developed Bifröst, an object-centric approach to reflection. Bifröst models meta-objects explicitly, exclusively targeting objects as the sole reflective unit of change. This model provides a unification of various approaches to reflection. We have validated Bifröst by demonstrating how it is well-suited to implement a number of key reflective applications in the domain of software development.
- *First-class, active contexts:* Software updates must be installed dynamically to avoid costly maintenance downtimes. We have developed an approach to dynamic updates called Theseus that structures objects and classes from distinct versions into distinct first-class contexts. Contexts prevent inconsistent execution of code from mixed versions. The update of the software is incremental and first-class contexts control the progressive migration from one version of the software to the next. We have implemented prototypes of our approach for Smalltalk and Java.
- *Linked, active source code:* Current software development tools fail to address synchronization of code shared between independent systems (medium-grained and medium-term as well as long-term adaptations). As software evolves, libraries, components and even fragments are frequently duplicated, adapted and specialized across software projects. We have developed a family of performant techniques for the detection of inter-system source code duplication and validated it on a large ecosystem consisting of all the projects in the Squeaksource code repository. We have established that over 14% of all methods in the repository are present in at least 2 different projects.

For further details see:

- [Final report](%assets_url%/download/projectreports/snf10-final.pdf)
- [Publications](%assets_url%/scgbib/?query=snf12&filter=Year)


---
