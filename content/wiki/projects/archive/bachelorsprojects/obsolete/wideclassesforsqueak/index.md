---
Title: Wide Classes for Squeak
---

[Manuel Serrano: Wide Classes](http://citeseer.ist.psu.edu/serrano99wide.html)

This paper introduces the concepts of wide classes and widening as extensions to the object model of class-based languages such as Java and Smalltalk. Widening allows an object to be temporarily widened, that is transformed into an instance of a subclass, a wide class,  and, later on, to be shrunk, that is reshaped to its original class. Wide  classes share the main properties of plain classes: they have a name,  a superclass, they may be instantiated, they have an associated class  predicate and an associated type that may be used to override function  definitions.  
Widening is also useful to implement transient data storage for longlasting computations. In particular, it helps reducing software data retention. This phenomenon arises when the actual data structures used in a program fail to reflect time-dependent properties of values and can  cause excessive memory consumption during the execution. Wide classes may be implemented for any dynamically-typed class-based  programming language with very few modifications to the existing runime system. We describe the simple and efficient implementation strategy used in the Bigloo runtime system. 


---

The goal of this bachelors project is to implement wide classes in Squeak Smalltalk. For that the current capabilities for chaning the class of an object at runtime are evaluated, the API is extended to provide a useful abstraction for Wide Classes. Then it's use is shown with multiple examles by refactoring some classes in Squeak to use the Wide Classes pattern.
