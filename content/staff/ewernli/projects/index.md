---
Title: Projects
---

I am working on [Theseus](%base_url%/research/Theseus), an approach to update server applications without restarting them (live updates), and [Dynamic Ownership](%base_url%/research/DynamicOwnership).

I can propose the following projects:

**Linking class evolution and the characteristics of their instances at run-time**

There have been many studies of the evolution of classes, but they did not consider the corresponding characteristics of the corresponding objects *at run-time*. For instance, 
do classes that evolve a lot have many or few instances at run-time? Do classes that evolve a lot correspond to thread-local or thread-shared objects? Etc. The goal of this project is to study the evolution of classes, taking into accound the characteristics of their corresponding instances at run-time. 

To measure the characteristics of objects at run-time, we will need to devise a dedicated [instrumentation](http://en.wikipedia.org/wiki/Instrumentation_%28computer_programming%29) technique. We will use either program transformation (rewritting), or the Maxine VM with [virtual machine level analysis](https://wikis.oracle.com/display/MaxineVM/Virtual+Machine+Level+Analysis).


-  *Required Profile:* good programming skills, interest in server applications, interest in low-level details 
-  *Opportunity:* to become an expert in monitoring and instrumentation ;) and to understand the challenges in the design of server applications
-  *References:* [Understanding source code evolution using abstract syntax tree matching](http://portal.acm.org/citation.cfm?id=1083143), [On the Structure of Sharing in Open Concurrent Java Programs](http://www.cs.rpi.edu/~milanova/docs/wcre10.pdf), [Theseus](%base_url%/research/Theseus)

**VM-support for incremental updates**

In [Theseus](%base_url%/research/Theseus), live updates are incremental: different versions of code coexists at run-time isolated into contexts. Objects shared across contexts are mediated with bidirectional transformations to accomodate structural changes.

We have implemented several prototypes of this approach using program rewriting. The goal is to implement this approach at the VM-level for optimal performances.

Essentially, pointers must be changed to indicate whether the object is local or shared. The semantics of method invocations and field accesses will differ for local and shared objects.


-  *Required Profile:* excellent programming & debugging skills, interest in server applications, interest in low-level details 
-  *Opportunity*: to hack in the [Maxine VM](https://wikis.oracle.com/display/MaxineVM/Home) ;)
-  *References*: [Maxine VM](https://wikis.oracle.com/display/MaxineVM/Home), [Theseus](%base_url%/research/Theseus)

**Delegation Proxies**

Proxy is a design pattern that has found many useful applications, e.g. to implementat persistency, asynchronous computation (Future), tracing and logging, etc. The goal of this project is to provide better support for proxies in the programming language. 

A draft of the implementation is already available, but there are many open points, both conceptual & technical. 


-  *Required Profile:* Interested in reflection / reflective language / Smalltalk, language engineering
-  *Opportunity:* to become an expert in metaprogramming
-  *References:* [A On the design of the ECMAScript Reflection API](http://prog.vub.ac.be/~tvcutsem/invokedynamic/esharmony_reflect)

**Ownership and Factory Methods**

It is common that an object owns other objects. For instance, a list implemented internally with linked nodes, owns the nodes. The ownership relationship is usually not explicit in programming language, and it can by consequence be hard to enforce. 

We have built a first version of an extension of Smalltalk with dynamic ownership,  but we did not consider factory methods on the class-side. The goal of the project is to implement an improved version that handles factory methods.


-  *Required Profile:* Interested in language engineering, object-oriented design principles (encapsulation, aggregation, modularity, coupling) 
-  *Opportunity:* To improve object-oriented design skills 
-  *References:* [Dynamic Ownership](%base_url%/research/DynamicOwnership), [Dynamic Ownership in a Dynamic Language](http://scg.unibe.ch/wiki/projects/bachelorsprojects/DynamicOwnership/DynamicOwnershipInDynLang)
 

 
