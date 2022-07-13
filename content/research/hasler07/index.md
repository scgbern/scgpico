---
Title: Enabling the evolution of J2EE applications through reverse engineering and quality assurance
---

*Enabling the evolution of J2EE applications through reverse engineering and quality assurance* is a project funded by the [Hasler Foundation](http://www.haslerstiftung.ch/) (project no. 2234).

| | |
|---|---|
|!Funding:|352'820.&#8212; SFr.
|!Period:|Oct 1, 2007 - Sept. 30, 2010
 
#Keywords
Software evolution; reverse-engineering; quality assurance.
 
#Summary
Java 2 Platform, Enterprise Edition (J2EE) was first introduced in 1999, and since then it has become one of the standard technologies in enterprise application development. An enterprise application is a complex software product that manipulates much persistent data and interacts with the user through a vast and complex user interface. Like any complex software systems, enterprise applications need to continuously change to adapt to new requirements. However, successive changes lead to a decay in the internal quality unless effort is invested to control it.

To address the complexity of enterprise applications, J2EE offers a conglomerate of several technologies, (e.g. Enterprise Java Beans - EJB or Java Server Pages - JSP) using several languages, (e.g. Java, XML or SQL). In this context, simply applying existing reverse engineering and quality assurance techniques developed for object-oriented systems fails due to two major reasons:
 

-  analyzing only the Java source code overlooks the information written in other languages such as the XML configurations, the JSP files, the database structure or the SQL statements, and 
-  even when analyzing the Java source code we need to consider the technology specific patterns (e.g. implementing specific interfaces).

This project aims to conduct a systematic study in reverse engineering and quality assurance of J2EE applications. In particular, we target the following questions each of them being addressed in a separate track:


-  How do we model J2EE to support analysis of the different languages? 
-  What defines internal quality in J2EE applications and how do we measure it? 
-  How do we visualize the diversity of languages to support understanding of J2EE applications? 

For more information, please consult the [Research Plan](%assets_url%/download/projectreports/hasler07-part2.pdf) of the project [pdf].

#Intermediate Report

The intermediate report covers the period from Oct. 1, 2007 through Sept. 30, 2008.

This project focuses on reverse engineering enterprise applications that are implemented in various languages. Some of the most significant results in the first year include:
 

- *Meta-modeling:* We designed a modeling platform based on a minimal meta-meta-model. We developed a new approach for integrating annotations in the reverse engineering process.
- *Parsing:* We started to investigate a lightweight approach for parsing programs written in unknown languages.
- *Visualization:* We have developed a novel software visualization technique by employing a cartography metaphor. While the technique is generic, it also proved to be useful for representing J2EE systems.

For further details, please consult the full intermediate report and the associated publications:


- [Intermediate report](%assets_url%/download/projectreports/hasler07-intermediate.pdf) [pdf]
- [Publications](%assets_url%/scgbib/?query=hasler08&filter=Year)

#2nd Intermediate Report

The 2nd intermediate report covers the period from Oct. 1, 2008 through Sept. 30, 2009.
The key results in the second year include:


- *Case Studies:* An industrial case study was analyzed in detail. Issues were studied in the area of quality assurance, with problems spanning from identifying unsafe database queries to identifying inadequate layering.
- *Meta-modeling:* The FAMIX metamodel was extended to accommodate Java Enterprise applications. Tools were developed to analyze polyglot source code and import source models.
- *Visualization:* Novel visualizations were developed to track transaction flow, to expose unsafe database queries, and to expose communication paths between architectural layers.


- [2nd intermediate report](%assets_url%/download/projectreports/hasler07-intermediate2.pdf) [pdf]
- [Publications](%assets_url%/scgbib/?query=hasler09&filter=Year)

#Final Report

The final report covers the period from Oct. 1, 2009 through Sept. 30, 2010.
The most important results results in the third year include:


- *Parsing:* Fact extractors were implemented for Java Server Pages, Maven configuration files and SQL files using the PetitParser framework.
- *Visualization:* New visualizations were developed to aid in the analysis of Data Transfer Objects.
- *Interactive Browsers:* Dedicated browsers were developed using the Glamour browser framework.


- [Final report](%assets_url%/download/projectreports/hasler07-final.pdf) [pdf]
- [Publications](%assets_url%/scgbib/?query=hasler10&filter=Year)

