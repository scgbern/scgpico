---
Title: Agile Software Assessment
---

![Asa-logo.png](%assets_url%/files/54/v4kl5a1k0snggemb5a6lfdmhj2phil/asa-logo.png)*Agile Software Assessment* is a project funded by the [Swiss National Science Foundation](http://www.snf.ch/) ([SNSF project # 200020-144126/1](http://p3.snf.ch/Project-144126)).
Funding has been requested for a continuation project, [Agile Software Analysis](%base_url%/research/snf16).

|**Funding:**|650,000.&#8212; SFr.
|---|---
|**Period:**|Jan 1, 2013 - Dec. 30, 2015
|**Collaborating teams:**|[REVEAL research group](http://www.inf.unisi.ch/faculty/lanza/), University of Lugano, Switzerland<br/>[RMod group](http://rmod.lille.inria.fr/), INRIA, Lille, France<br/> [Loose Research Group](http://loose.upt.ro/), Politehnica University of Timisoara, Romania
|**Keywords**|*Software evolution; Reflection; Meta-modeling; Context-oriented programming; Clone detection; Software architecture; Reverse engineering*

#Summary

A significant portion of software development effort is devoted to reading and understanding code. Unfortunately, mainstream integrated development environments (IDEs) focus on low-level programming tasks rather than on supporting program comprehension and decision-making during software evolution. Analysis tools, on the other hand, usually have a narrow scope of applicability.

This project aims to *enable software developers to quickly and effectively analyze complex software systems with the help of tools to rapidly construct, query and manipulate software models*. We refer to this goal as *agile software assessment*, since developers are under constant pressure to assess the state of the system at hand in a timely fashion in order to carry out development and evolution tasks. The expected long term benefits of this research are improved developer efficiency, enhanced tool support during software development, and better quality software.

To this end, we propose four related research tracks: (i) Meta-Tooling will enable developers to rapidly develop custom tools to support decision-making, (ii) Agile Modeling will simplify the task of constructing and refining software models from source code and other data sources, (iii) Large-Scale Software Analysis will allow developers to process and exploit the large amount of additional data related to a project, and (iv) Architectural Monitoring will help developers track the evolution of architectural constraints in complex software.

-  *Meta-Tooling*. Developers ask detailed and domain-specific questions about the software systems they are developing and maintaining. Specialized tools are needed to effectively answer these questions. Most IDEs do not provide suitable functionality to answer detailed questions about the design and implementation of software, as they focus on programming rather than software modeling. We plan to carry out empirical studies to better understand what questions developers ask about code, and what tools and techniques are most effective at supporting program understanding and software assessment. Meta tools are tools for building tools. We propose to construct an experimental meta-tooling environment to enable rapid composition of customized software assessment tools to support effective decision-making in the development process.
-  *Agile Modeling*. A key bottleneck to effective software assessment is the rapid construction of appropriate software models from program source code and the associated data sources. We propose to develop techniques to construct such models with the help of reusable and composable parsers targeting common programming language classes, user-guided parser refinement using island grammars, and semi-automated inference of structural features of program and data sources by analyzing lexical features such as indentation and textual content.
-  *Large-Scale Software Analysis*. Complex software systems generally exist within an even larger software ecosystem consisting of older versions of the systems, variants, and other client applications of the system or its parts. Being able to query and mine this large resource of information can be very helpful for developers to make informed decisions concerning the project at hand. We propose to develop an infrastructure to model and query large software data sets, including historical information and variants. We will seek to adapt and exploit big data analysis techniques to the particularities of large source code repositories and software ecosystems.
-  *Architectural Monitoring*. The architecture of a software system consists of the design constraints that guarantee non-functional properties, such as ease of evolution, good run-time performance, and rapid build times. Unfortunately architecture is rarely explicit in code, hence it must be recovered and tracked, sometimes at great cost in developer time. We propose to carry out empirical studies to identify and classify architectural constraints that arise in practice in software systems and let these studies influence the way in which we design mechanisms for the specification of constraints. We propose to develop techniques to monitor architectural evolution and integrate monitoring into the development process and environment; this promises to improve system stability, quality, and robustness.


For more information, please consult the [Research Plan](http://scg.unibe.ch/download/projectreports/snf13-part2.pdf) of the project [pdf].
