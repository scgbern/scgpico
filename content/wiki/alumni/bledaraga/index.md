---
Title: Bledar Aga
---
#Bledar Aga
![/download/AC/Bledar/Prot2-1.png](/download/AC/Bledar/Prot2-1.png)

#Master project
Breaking dependency cycles   

                 

   
#Description
The wrong connection between software components may cause problems in software architecture, such as cyclic dependencies. A cyclic dependency is explained by the following: Suppose we have two packages, p1 and p2. P1 contains the classes A and B, while p2 contains classes X and Y. The class A of package p1 is dependent on the class X of package p2 and the class Y of package p2 depends on the class B of package p1. The connection of the components of p1 and p2 forms a direct cycle.
Cyclic dependencies compromise the modularity of the system, increase the development time and prevent proper reuse. 
The aim of this project is to implement a tool that proposes solutions for breaking these dependencies between packages.
#Related work
The goal of this work is to extend the tool [Softwarenaut](/softwarenaut) which graphically illustrates the dependencies, but not the cyclic dependencies. Our solution enables the user to select a cycle and propose the best refactoring method for breaking it. The operation can be repeated until the user has solve all cycles or he/she decided to stop. All the selected actions of refactoring are registered in a log file so the changes are not made directly to the source code. The user has the possibility to export the log file so the changes on the source code can be done later (example by another tool, Eclipse) when he is sure of them. 
We have different techniques for the refactoring: Move the class, move the method, the use of the dependency inversion principle, the use of pattern dependency injection and the combination of dependency injection with dependency inversion. The best proposed method of refactoring is given by calculating the expected profit for all possible alternatives.

#Additional information: 
 [Project overview  ](/download/AC/Bledar/MasterThesisFirstPresentation.pdf)

#Milestones

-  (8) find cycles (Tarjan -> SCC -> single cycles) 
	-  12/11

-  (5) identify cycle to break (shared dip. first)
	-  19/11

-  evaluating breaking strategies sequences 
	-  (13) saving new snapshot of model
		-  10/12

	-  () find best logical dependency to break
		-  17/12

	-  (13) evaluation/application of strategy 
		-  24/12




-  (13) user-interaction 
	-  ??/12

	-  select cycle / fix strategy
	-  backtrack 
	-  "export" results

-  (generate code ? other thesis ?) 
