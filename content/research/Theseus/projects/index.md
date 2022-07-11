---
Title: Projects
---

**Theorectical foundations for incremental updates**

With incremental updates, different versions of code coexists at run-time isolated into contexts. Objects shared across contexts are mediated with bidirectional transformations to accomodate structural changes. 

The structure and behavior of local objects can change arbitrarily ; the structure of shared objects can change as long as the behavior is equivalent in both contexts. 
The goal is to formalize the correctness properties for this update model. 

*Skill required : you must like mathemtical notion, proofs, and abstract thinking. Not much coding will be necessary.*

**Understanding the evolution of shared objects**

There have been many studies of the evolution of classes, but they did not consider whether instances of these classes were shared or not at run-time. The goal of this study is to characterize the evolution of shared and local classes.

Do they change structure ? behavior ?  What is the proportion of local and shared objects at run-time ? Are object potentially shared, or effectively shared ? We hope to validate the hypothesis that shared object do not evolve as much as local objects.

*Skill required : you must like empirical work with running systems, and enjoy conducting systematic and rigorous experiments that lead to reliable observations. Some coding skills are required since the code must be instrumented to detect events at run-time.*

**Declarative transformation for incremental updates**

With incremental updates, different versions of code coexists at run-time isolated into contexts. Objects shared across contexts are mediated with bidirectional transformations to accomodate structural changes. 

At the moment, the bidirectional transformations are expressed with pair of uni-directional transformation in imperative code. Instead, we would like to express the bidirectional transformations by composing operations declaratively. 
The goal of the project is (1) to define a catalog of  operators  that can be  declaratively composed to synthesize the imperative code, and (2) to study version histories to assess how well the catalog of operators can express evolutions in practice. 

*Skills required :  a jack-of-all-trades with interests in programming languages and DSL, but also logic to show properties of the operators, and empirical research when studying vershion histories. *

**VM-support for incremental updates**

With incremental updates, different versions of code coexists at run-time isolated into contexts. Objects shared across contexts are mediated with bidirectional transformations to accomodate structural changes. 

We have implemented several prototype of this approach. The goal is to implement this approach at the VM-level for optimal performances. 

Essentially, pointers must be changed to indicate whether the object is local or shared. The semantics of method invocations and field accesses will differ for local and shared objects. 

*Skills required :  you must be a hacker, like debugging and get your hands dirty.  Adapting a VM is cool, fun, but not trivial.*

Some References:


-  [Loci: Simple Thread-Locality for Java](http://www.it.uu.se/research/upmarc/loci)
-  [Thread-local heaps for Java](http://portal.acm.org/citation.cfm?id=512439)
-  [Understanding source code evolution using abstract syntax tree matching](http://portal.acm.org/citation.cfm?id=1083143)
-  [Towards a Pragmatic Atomic Dynamic Software Upgrade System](https://dspace.ist.utl.pt/bitstream/2295/335468/2/student_pina_inesc-ist_cr.pdf)
-  [On the Structure of Sharing in Open Concurrent Java Programs](http://www.cs.rpi.edu/~milanova/docs/wcre10.pdf)
