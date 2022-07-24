---
Title: Agile Software Analysis
---
#Agile Software Analysis
![Asa-logo.png](%assets_url%/files/54/v4kl5a1k0snggemb5a6lfdmhj2phil/asa-logo.png)*Agile Software Analysis* is a project funded by the [Swiss National Science Foundation](http://www.snf.ch/) ([SNF project 200020_162352](http://p3.snf.ch/Project-162352).)
The project is a continuation of [Agile Software Assessment](%base_url%/research/snf13)

| | |
|---|---|
|**Funding:**|708'852 SFr.
|**Period:**|Jan 1, 2016 - Dec. 30, 2018
|**Collaborating teams:**|[RMod group](http://rmod.lille.inria.fr/), INRIA, Lille, France<br/>[REVEAL research group](http://www.inf.unisi.ch/faculty/lanza/), University of Lugano, Switzerland<br/>[PLEIAD lab](http://pleiad.dcc.uchile.cl), University of Chile, Santiago, Chile<br/>[Dr. Mircea Lungu](https://rug.academia.edu/MirceaLungu), University of Groningen, The Netherland<br/>[Dr. Tudor Girba](http://www.tudorgirba.com), [feenk GmbH](http://feenk.com), Bern, Switzerland
|**Keywords**|*Software evolution; Meta-modeling; Clone detection; Software architecture*

#Summary

Software developers actually spend much of their time not producing new code, but analysing the existing code base. Integrated Development Environments (IDEs) however are mostly glorified text editors, and offer only limited support for developers to query and analyse software systems. In this continuation of our SNF project *Agile Software Assessment*, we proceed to explore new ways to enable developers to efficiently answer detailed questions about the software system under development.
Like its predecessor, this project is designed as four related PhD tracks (including two end-of-thesis subprojects). We avoid any critical dependencies between the tracks, while offering many possibilities for fruitful collaboration.


-  *Agile Model Extraction*. Here we address the question: “How can we rapidly extract models from unknown source code?” The key insight is that we do not need precise parsers to extract useful models from software. By using approximate parsing techniques combined with heuristics to automatically recognise common programming language features, we expect to be able to iteratively construct analysable models of complex software systems in a fraction of the time it would take to build a conventional model importer.


-  *Context-Aware Tooling*. In this track we tackle the question: “How do we close the abstraction gap between application domains and IDEs?” We plan to extend and generalise our previous work on highly configurable tools, such as debuggers, browsers and inspectors, that can easily be adapted to the context of a given project, and enhance both the source code and the IDE itself with domain-specific and project-specific information. In particular, we will focus on domain-specific ways to present and query software systems.


-  *Ecosystem Mining*. Here we ask: “How can we mine the ecosystem to automatically discover intelligence relevant to a given project?” When evolving source code, developers commonly make use of dedicated social media (i.e., question and answer fora) as well as general search engines to search for answers to technical questions. In addition to these sources, the software ecosystem of related software systems can be a rich source of useful information, if properly analysed. We plan to mine these ecosystems to locate common, reusable code examples, opportunities for refactoring, common bugs, and bug fixes.


-  *Evolutionary Monitoring*. Finally we address the question: “How can we steer the evolution of a software system by monitoring stakeholder needs, technical debt, and ecosystem trends?” By monitoring the activities of the stakeholders (i.e., both users and developers), we hope to infer their needs and the chronic problems of the system. By monitoring “technical debt” (i.e., pain points where effort should be invested to avoid the future escalation of these problems), we expect to be able to better prioritise future development activities. By monitoring technical trends from the ecosystem, we expect to be able to detect new opportunities and also better estimate the cost of future change.

In addition to disseminating the results of the research through academic publications, we will continue to release software artifacts (tools, IDE extensions etc.) as part of the Pharo development environment and the Moose analysis platform used by a wide community of academic and industrial partners.

For more information, please consult the [Research Plan](/download/projectreports/snf16-part2.pdf) of the project [pdf].
