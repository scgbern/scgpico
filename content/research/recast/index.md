---
Title: Recast: Evolution of Object-Oriented Applications
---

#Overview

*Recast: Evolution of Object-Oriented Applications * is a project funded by the [Swiss National Science Foundation](http://www.snf.ch/) (SNSF project # 620-066077) led By Prof. S. Ducasse from 2002 to 2006.

 
##Abstract.

This research project is about reengineering object-oriented applications. Reengineering such applications inherits complex problems related to software maintenance, i.e., program understanding, program analysis, and program transformation and adds to them (1) the complexity introduced by late binding, dynamic typing, and incremental definition specific to object-oriented programming, and (2) the complexity related to the new way of software development (multiple parallel versions, frameworks, and products lines). Based on our research experience, this research project is structured in three non-orthogonal directions: (a) reengineering, (b) analysis of versions and (c) migration of object-oriented applications towards components.

 
##Keywords.


Software Engineering, Object-Oriented Programming Reengineering, Reverse Engineering, Program Understanding, Architecture, Meta-Model, Code Analysis, Frameworks, Patterns.

 
##Summary


 Most of the effort while developing and maintaining a system is spent supporting its evolution [Som96]. This document presents RECAST, a research project whose goal is to support the evolution of objectoriented applications. The following two laws due to Manny Lehman illustrate the vision of RECAST. They stress the fact that software must continuously evolve to stay useful and that this evolution is accompanied by complexity. 

 <UL>

- *Continuous Changes.* &#147;an E-type program1 that is used must be continually adapted else it becomes progressively less satisfactory&#148; [Leh96] 
- *Increasing Complexity.* &#147;As a program is evolved its complexity increases unless work is done to maintain or reduce it.&#148; [Leh96]</UL> 

 RECAST is based on the vision that supporting evolution of applications will be always mandatory. This is independent of the language and the paradigm used to develop the applications. Tools and techniques are necessary to support the evolution of applications. RECAST structures the research on evolution of object-oriented applications around three directions. 

 <UL> <LI> *Reengineering.* First it considers the reengineering aspect of evolution. It addresses questions such as: how can we understand a large industrial application, i.e., reverse engineer it, how can we identify problems that hamper evolution, how can we change it, i.e., reengineer the application to fix those problems.

-  *Versions.* Second, it considers multiple versions analysis, i.e., systems are put best understood by taking into account their evolution over several versions. Hence a temporal dimension is added and used to understand applications and predict their future.</LI> <LI>*Migration.* Then finally it approaches paradigm shift by investigating how the migration of objectoriented systems into component systems can be supported. It introduces the problematic of supporting the identification, extraction and migration of code in terms of components.</LI> </UL> 

The concrete results we want to obtain within a period of three to four years are the following. 

 <UL> <LI>*Reengineering - Meta-meta-model.* One of the key aspects of this project is the new infrastructure and meta-model we want to develop. Having an extensible meta-model will support a new range of work such as the architecture extraction, program understanding, and program analysis and will allow us to create a synergy between the other research directions. </LI> <LI>*Reengineering - Supporting Code Understanding and new IDEs.* We want to investigate new ways of helping programmers to understand code. The idea is to add semantic information to code fragments and integrate it into new IDEs.</LI>

- *Version Analysis.* We want to use the version information to support the understanding of application. We want to be able to analyse versions of a system with our tool CODECRAWLER.</LI> <LI>*Component Migration - A Framework for Component Description.* We want to work on the migration of object-oriented code towards components. For this purpose, we want to design a framework with which different component models can be represented and compared.</LI> <LI>*Component Migration - Component Identification.* We want to gain experience in the identification of components within object-oriented code. We plan to apply concept analysis and cluster</LI> analysis techniques. </UL> <H2><A NAME="reengineering">Moose</A> </H2> 

We are currently developing an reengineering environment named *Moose* that supports OO reengineering and serves as basis for RECAST. <A HREF="http://www.iam.unibe.ch/~scg/Research/CodeCrawler/index.html">CodeCrawler</A> is based on such an environment. Most of the <A HREF="http://www.iam.unibe.ch/~ducasse/WebPages/Publications.html">research papers</a> and work we did in the context of reengineering are based on <a HREF="http://www.iam.unibe.ch/~scg/Research/Moose/index.html">Moose</a>. Moose supports the following languages: Smalltalk, C![Recast: Evolution of Object-Oriented Applications](%base_url%/research/recast) and Java. The latest version is available as part of CodeCrawler. Moose is platform independent as it have been ported to <A HREF="http://www.cincom.com/smalltalk">VisualWorks 7.0</a> which is available in a non-commercial form. So Moose is running on PC, Mac, Unix, and Linux. 

For more information, 

- [The research plan](%assets_url%/download/projectreports/RecastProposal.pdf) of the project
- [FAMOOS Handbook](%assets_url%/download/projectreports/FamoosHandbook.pdf)
-  [Reengineering Object-Oriented Applications](%assets_url%/download/projectreports/iam-03-008Habilitation.pdf): S.Ducasse's habilitation summarizes a part of the research effort led at the SCG from 1996 to 2000 around reengineering.
- [Object-Oriented Reengineering Patterns](%assets_url%/download/oorp) 
##Intermediate Reports


- [Intermediate report 02-03](%assets_url%/download/projectreports/RecastSNF02-03.pdf) [pdf] 
- [Intermediate report 03-04](%assets_url%/download/projectreports/RecastSNF03-04.pdf) [pdf] 
- [Intermediate report 04-05](%assets_url%/download/projectreports/RecastSNF04-05.pdf) [pdf] 
- [Final report 05-06](%assets_url%/download/projectreports/RecastSNF05-06.pdf) [pdf]
