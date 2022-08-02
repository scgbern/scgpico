---
Title: Survey of ubiquitous language in open source projects
---
#Survey of ubiquitous language in open source projects
#Idea
Large scale open-source projects analysis that has both user stories or BDD specifications to see how much specifications and their implementations actually linguistically correspond (follows DDD principles, use of ubiquitous language).

#Hypothesis
There is seldom direct correspondence between user stories and related code entities such as class or method names, which breaks the DDD and BDD principles

#Research questions

- How tight is the correspondence between specification and corresponding implementation?
- How do specification and implementation co-evolve in open source projects?

#Tasks 
(***the first two tasks can be finished as a seminar, can be done as a bachelor's or master's thesis as a whole***)

- Compiling a list of open-source projects that contain both user stories and BDD specs
- Determine whether a file is a specification file
- Not only large-scale analysis but also observing the evolution (per-commit/ per-release) to see how the correspondence between specification and implementation degrades (or does not). 

#Challenges

- File extensions for specifications in many BDD tools are very generic such as .md, .cs. Concrete criteria are needed to select projects on GitHub.
- The (existing) dataset for BDD only contains cucumber related projects. How to prepare a dataset that covers projects with other BDD tools? 
- We have two distinct (existing) datasets: one for user stories and one for BDD specs. Comparison results won't be generalizable
- Possibility of specification-code correlation and co-evolution could be higher for projects with BDD specs as they are aware of the BDD and DDD principles. Hence, it is important to also look at projects with other natural language requirements such as user stories for our results to be more generalizable. 
