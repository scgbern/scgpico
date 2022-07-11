---
Title: Road Map
---

Current state of the project:


-  Two implementation strategies have been explored: eager with custom VM, lazy with prog. transformation.
-  Existing prototypes for Smalltalk and Java. 
-  Basic validation against Pier (Smalltalk) and Jetty (Java).
-  Bidirectional transformations (BX) are specified with imperative code.

Road map


-  *Declarative transformations*. Specify a catalog bidirectional operations to express transformations declaratively. Check that transformations are type safe. Assess practicility of the catalog to support evolutions. 


-  *Efficent and Sound VM implementation*. Implement the lazy strategy with a custom VM. This should provide a clean, efficient implementation. Prove that the implementation preserves the behavior of the multi-threaded system if the identity transformation is used.  


-  *Adaptive Optimizations with Dynamic Ownerhsip*. First, implement a flexible model of dynamic ownership where the ownership policies are user-defined. Second, define and use a policy that instruments objects when objects escape their original context (i.e. when objects become context-shared).


-  *Incremental updates without BX*. BX are used for objects that are shared accross contexts. BX can be avoided if shared objects are constraint to (i) not evolve at all, or (ii) evolve only their behavior. This model is close to traditional Context-oriented programming. Assess the practicality of such a model. Leverage thread-local type system to distinguish between context shared/local objects. Thread-locality is a special kind of object containment. 


-  *Exhaustive validation*. Validate the approach thouroughtly. Study the relevant characteristics of applications: threading patterns, access patterns, sharing patterns. Assess the approach: what kinds of applications are supported, the memory overhead, the performance overhead, the effort to adapt the original application, the effort to implement the transformations, what kinds of evolutions are supported. 



-  *First-class references*. Decouple objects from references. Provide a meta-object protocol for references. The MOP reifies the flow (paramter passing, return value), changes to the object graph (assignment), navigation (dereference). It can be used to specify reference policies, e.g. readonly references, unique references, stack-local references, containment. 
