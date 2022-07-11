---
Title: ActiveContext
---

**Active context** is a 1st class notion of context in the programming language. A context can be instantiated an manipulated as a regular object. There is one *active* context at a time. 

With active context comes **contextual objects**. Contextual objects are objects whose state is not global, but local to the active context. 

Change to the state of an object in a context can be propagated to other context using **transformation** function. A transformation function is a bi-directional mapping from the state of an object in one context to the state in another context. 

Active context explores also the **duality between state and behavior in class-based language** (![c2wiki](http://c2.com/cgi/wiki?DualityBetweenStateAndClass)): the behavior of an object is indeed determined by the state of its parent class (method dictionary). The class of an object can be contextual, and as a consequence its behavior as well.

This abstraction can be used by developers at the applicative-level, but also at the system-level to isolate components, or perform dynamic software update. The aim of the project is also to build a **catalog of relevant use cases** that shows the usefulness of the abstraction.

One last important point is the **composability** of the abstraction. If a developer defines a context for one specific programming task, it should still be safely composable with another usage of contexts, for instance the isolation of application from one other.

The purpose of this project is to define a **consistent and comprehensive programming model** based on active context. This programming model takes indeed a novel perspective on object-oriented programming which as subtle implications, for instance on the equivalence relation of objects, or their cloning.


#The revised Smalltalk Model


-  Everything is an object 
-  Every object is an instance of a class 
-  Every class has a superclass 
-  Everything happens by message sends 
-  Method lookup follows the inheritance chain
-  *Everything happens within a context*
-  *A context is an object*
-  *Every context has a parent context*
-  *The state of every object is contextual*
	-  *Except for the root context*


#A tour of ActiveContext


-  [The ActiveContext Model](%base_url%/research/ActiveContext/Model)
-  [Use Cases](%base_url%/research/ActiveContext/Applications)
-  [Performance issues](%base_url%/research/ActiveContext/Optimizations)
-  [Related work](%base_url%/research/ActiveContext/RelatedWork)
-  [Future tracks](%base_url%/research/ActiveContext/Future)
