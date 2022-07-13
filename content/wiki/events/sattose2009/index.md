---
Title: SATToSE 2009
---

Welcome to Sattose 2009! 



#Lightning introductory talks 


-  **Visual Source Code Queries** (Johan Brichau)<br> Declarative code queries and software visualizations present complementary techniques to investigate the structure of a software system. Code queries permit to search for specific parts of interest while visualizations attract the attention to properties of parts of the system. We are working on tools and techniques to combine code queries with visualization in two ways: queries specify a visualization and visually-specified queries. [pdf](%assets_url%/files/31/azirza6z4op4c26o3626oexa0mmxb2/sattose09.pdf)


-  **Inconsistency management in source code with abductive logic programming** (Sergio Castro)<br> Inconsistency management using abductive-logic programming techniques has been discussed as a promising mechanism in many areas of software engineering, such as requirements engineering, software design, and databases. This presentation discusses the application of this technique for the diagnosis and correction of inconsistencies in source code using the IntensiVE tool suite. [pdf](%assets_url%/files/97/uoj7vkdetn263hnmxqsix524o1dkpk/inconsistencyManagementInSoftware.pdf)



-  **Process Extraction from Development Artifacts** (Abram Hindle)<br> As developers and stakeholders work together on a software project they create software artifacts such as changes, mailinglists, process logs, documentation, tests, translations, UI decorations, etc. These artifacts have various properties associated: modules, authors, files, and time.  Luckily time is what binds all these artifacts together. We propose a way of exploiting timelines and  time correlations of software artifacts, their entities and properties, to indicate what the underlying software development processes are observable. ![pdf](%assets_url%/files/3f/bf3g7ieboptly48i4xb0vmk0amcdub/SATTOSE-ahindle-2009.pdf) [http1](http://softwareprocess.us/) [http2](http://swag.uwaterloo.ca/~ahindle/)


-  **Helvetia &mdash; Domain Specific Language Models** ([Lukas Renggli](http://www.lukas-renggli.ch/)) <br> We face increasing pressure to support the development and embedding of new languages into existing host environments. For language developers new language features should be easy to implement and to integrate into the existing infrastructure. Language users want to use these languages in a homogeneous development environment, to combine them, and to control the scope of their effect. ![pdf](%assets_url%/files/8b/b5lsbat2rcjsorhv39knx0j1uzkcwk/helvetia.pdf) [http](http://research/helvetia)


-  **News from RMOD** (Stéphane Ducasse) <br> The RMod INRIA team recently got out of earth: it focuses on remodularisation of existing applications. keywords: Software maps, software metrics, modules, traits  ![pdf](%assets_url%/files/5b/3v6fpw7zwlkt7qt3jnh7vc4w75wqu6/Rmod-10min.pdf) [http](http://rmod.lille.inria.fr/)


-  **Mining Design (Ir)regularities with Formal Concept Analysis** (Kim Mens, with Andy Kellens) <br> Tools like IntensiVE support documenting source-code regularities and verifying adherence to these regularities when the software evolves. But how can we automatically discover such regularities from the source code of a system that hasn't been documented with such regularities before? In this presentation we show our first steps in creating an automated tool that automatically discovers sets of source-code artefacts that exhibit at least two source-code regularities (for example classes that belong to a certain hierarchy and that follow a similar naming convention) together with a set of artefacts that respect one of the regularities but not the other. The latter artefacts are potential inconsistencies. This gives us a good idea of the coverage of the regularity as well as a good measure of the presence of significant regularities.   ![pdf](%assets_url%/files/44/sxaa4ffgjijs45sghrm4zsjauhobf2/SATTOSE2009forWIKI.pdf)


-  **Smart Annotations and Cognac** (Andy Kellens, with Kris De Schutter) <br>This presentation briefly showed to tools we have been working on recently.  Smart Annotations is a simple Eclipse plugin that aids developers in annotating source code. By specifying logic rules, our tool warns developers when there are possible mismatches between the annotations and the source code. Cognac is an extension of the IntensiVE tool for verifying design rules in Cobol systems. Using a logic language and a number of static analyses, we were able to verify a range of design rules in an industrial case study. ![pdf](%assets_url%/files/e7/y80a6fd168ohoxw6b7ipaaralrni3n/SATToSE%202009.pdf)


-  **eDSM - Enriched Dependency Structural Matrix** (Jannik Laval)<br> It is a tool used to detect and to provide information to break cycles between packages of a system. It offers enriched cells showing contextual information information about the kinds of references made (inheritance, invocation, class references and class extension), the proportion of referencing entities and the proportion of referenced entities. It uses coloring information to an easier detection. This work has been implemented on top of the Moose reengineering environment and the Mondrian visualization framework (on VisualWorks and Pharo). [pdf](%assets_url%/files/d3/vd164x290i4w6iuffrf2pbz0m0blz9/DSM-Sattose09.pdf) [http1](http://rmod.lille.inria.fr/pier) [http2](http://www.jannik-laval.eu/)


-  **Turning Moose into PhaMoose** (Alexandre Bergel) <br> Mondrian is a scriptable and interaction visualization engine. Currently, it is essentially used to visualize almost all aspect of software programs. My work is focused on making Mondrian for Pharo fast. Several optimization are implemented. Visualizing procedural C code has also gained of my attention. ![pdf](%assets_url%/files/73/a8kj78tnotehjaikqwu1hdb0avjbrs/Bergel-SATTOSE2009.pdf)


-  **Managing Inconsistencies in Software Design Models using Artificial Intelligence Techniques** (Jorge Pinna Puissant)<br> The problem of dealing with inconsistencies in model-driven software evolution has many challenges. Among them, the time required for detecting and handling inconsistencies has to be sufficiently small so as not to disturb the designer in his work. In our research we propose to apply artificial intelligence techniques and heuristics to the domain of model inconsistency management, in order to reduce as much as possible the detection and handling time. More specifically, we try to use "Rule-based Systems" to detect the inconsistencies and "Automated Planning and Scheduling" techniques to handle the inconsistencies. [pdf](%assets_url%/files/70/i194ifdji6xi3pj5spds81rmr8m5tf/SATTOSEJorgePinna.pdf) [http](http://www.evolumons.be/)


-  **Context-oriented Concurrent Programming** (Jorge Ressia) <br>In conventional software applications, synchronization code is typically interspersed with functional code, thereby freezing the synchronization policies in place while impacting understandability and maintainability of the code base. We propose a new approach to concurrency control which strictly separates the functional code from the synchronization policy to be used. Software entities use a dedicated abstraction to express their concurrency requirements, and are then dynamically adapted in a given concurrency context to use a suitable synchronization policy that meets those requirements. As a consequence, the code base remains uncluttered with synchronization code, and entities can adapt the policy to use to the current context or to the collaborations in play. ![pdf](%assets_url%/files/75/svigmnpbchwskl5baxt6sqen2mapco/ContextOrientedConcurrentProgramming.pdf)


-  **Supporting Synchronous Software Development** (Lile Hattori) <br>In the context of global software development, where teams are geographically distributed, collaboration aspects, such as awareness, and synchronization are compromised by the lack of face-to-face communication. In this talk I will introduce a new approach to supporting collaboration in team-based software development. Our approach reduces the change propagation latency of current mainstream SCM systems and helps teams gain real-time awareness of the evolution of the software system. [pdf](%assets_url%/files/9f/2ace70mbb2zt7r7y0ek9g7zyxd772t/SynchronousSoftwareDevelopment.pdf)


-  **Cloning as Industrial Practice** (Mike Godfrey) <br> In this talk, I will outline what our group has discovered about software code cloning in practice, including a taxonomy of how clones may be used for principled engineering purposes. [pdf](%assets_url%/files/75/gxg44rjdk32ay3bsuo0n4fc404o3or/CLIP-sattose.pdf)


-  **How Java Enterprise applications are not Java** (Fabrizio Perin) <br> In Java Enterprise Applications, information is not contained just in the Java source code but is spread in different places like XML configuration files or SQL scripts. For example, while the computation logic is specified in Java, the transaction management related to the computation is specified in an XML descriptor. Thus, a comprehensive analysis needs to take all these sources into account. We present a unified meta-model for JEAs and we exemplify the detection of transaction problems through two dedicated visualizations. [pdf](%assets_url%/files/f1/1hv2dscjj7hsfbevuha49lyjb9wghb/FabrizioPerin.pdf)


-  **Mapmaking (with code and world)** (Simon Denier)<br>This talk briefly presents the main problem I have while porting Moose code from Visualworks to Pharo. I need a general picture of system organization into packages as well as package internals. Then I can relate elements to each other, dive into details, come back to the general picture. Thus I want maps. This talk discusses the general process of mapmaking in the real world, giving some basic principles, then present some simple ideas to make package maps. As a final thought, one should know that good maps come from good basemaps, i.e. good basic map layout. [pdf](%assets_url%/files/dc/jnkk9bwwcu9llys813jymva1ffdjnv/denier_sattose09bis.pdf)


-  **Lively Fabrik and Lively Wiki** (Jens Lincke)<br> Lively Fabrik and Lively Wiki is an end-user web development and collaboration environment based on the Lively Kernel. It enables users to create rich and interactive Web pages and applications - without leaving the Web. [pdf](%assets_url%/files/dc/fg7bhosigclriiq41wp85c3jxvshn9/Lincke-EUWD.pdf)


-  **Tracks for restructuring models**(Marianne Huchard) <br> The talk presents main tracks we follow for restructuring models by mining meaningful abstractions: formal concept analysis, relational concept analysis, identifier analysis and similarity flooding. [pdf](%assets_url%/files/49/0d7tn1o9qfl0ljprwm1p9ek3ipkdh7/marianneHuchardsattose.pdf)

#Scheduled Extended Presentations

Extended presentations are planned:

##Tuesday

##Wednesday


-  Identifier Analysis (Marianne Huchard) [TalkIdentifiers.pdf](%assets_url%/files/36/rmzaojgg8f9dol73o2fa0od7p6qluw/sattoseIdentifers.pdf)

#Working groups

-  [Smart tools/IDE](%base_url%/wiki/events/sattose2009/smartide)
-  Source code mining / mining repositories group (mainly discussed a few techniques useful for mining)
-  [Visualisations](%base_url%/wiki/events/sattose2009/Visualisations)
-  Similarity flooding [Paper](%assets_url%/files/90/elz73lzhpy3t0wgqrsch59iippvupb/models08.pdf) [Presentation](%assets_url%/files/d3/znphgpcac10rz93dmmfj77wgwz6axn/sattoseFlooding.pdf)
