---
Title: Model
---
#Model
#The basics

![Basics_uml](%assets_url%/files/a2/lwjt7uhp0p777kv4efxiw6jttn82fx/basics.png) 

The key idea in ActiveContext, is to have the context represented as a regular object. Context can then be instantiated and manipulated as other objects. There is however one active context per thread at a time. The state of objects is contextual &mdash; access to the object state is delegate to the current active context


---

#Change propagation

![Propagation_uml](%assets_url%/files/c9/jwrv3zs52p718lwfrzi0ud6ng8692g/propagation.png) 

If state was entirely local to a context, the system would not add much flexibility. Therefore, the state of an object can be synchronized across contexts using so-called transformation function. 

Each context has a parent context that can not be changed. The various existing contexts form then a tree. When the state of an object is changed in a context, the *effect* will be propagated to other contexts.

A change propagation between two contexts A and B can go then either from A to B or B to A, depending on the origin of the change. The transformation is *bi-directional*. The two transformation functions should be implemented so that they are their inverse respectively: state = toFrom( fromTo( state ))

How each context propagates its change is defined by its class. The default Context class implements the identity transformation: all data are copied from one context instance to another. The Context class can however be subclassed to implement other change propagation strategies. 


---

#The class meta-level 

![Class_meta_level_uml](%assets_url%/files/84/54mpabyyma913rhxypqqspbtlnz88e/class-meta-level.png)

The same mechanism expands naturally to classes themselves. 

The class' state is contextual and class-side instance variable and then no more global. 


---

#Contextual class 

![Contextual_class_uml](%assets_url%/files/4b/bp8vsa5yxjr2spy2xwhn8qtll7gw3x/contextual-class.png)

The state of an object is contextual, which also applies to the class of an object. An object can then be seen (and behave) as an instance of ClassV1 in a context and of ClassV2 in another. The actual class switch will be performed by the transformation functions. 

Class resolution  is no more than an access to a dictionary object (Smalltalk in this case), which is also contextual. As a consequence, class resolution is also contextual; The name #MyClass may refer to different classes in different contexts.

Classes can then be seen as *virtual* without relying on a specific lookup mechanism! We can then swap between two versions of a class without changing the depending code. But this also support other cases for instance class renaming. 

There are still a few issues to dig out:


-  So far, it forbids meta-programming with class held as reference
-  Class-side instance variable will not be transferred. Is it right or wrong?
-  self class name makes no sense anymore
-  A class' class must not be changed otherwise a Metaclass could suddently have more than one instance

---

#The context meta-level

![Context_meta_level_uml](%assets_url%/files/9e/p0bowbrg1xc4044op7wfi91b2q95xa/context-meta-level.png)

Every object is contextual, including context instances. 

Context methods are executed within a meta-context. As a consequence, a context stores their state in a meta-context and class resolution is realized using the meta-context. The later point is especially important for transformation function. 


---

#The chicken-egg problem

![Chicken_egg_uml](%assets_url%/files/93/am5e019xc59kzpb33v37y759oy0i4h/chicken-egg.png)

This approach does however lead to a chicken-egg problem:


-  Where does the meta-context stores its state?
-  How can I obtain a reference to the meta-context?
-  What is the class of the meta-context?

To solve theses issue, we introduce


-  a class MetaContext 
-  with one unique instance, the #Root context

The #Root context 


-  is the only object in the system that stores its state as usual (non-contextual).
-  is globally resolved to its unique instance. 
-  is a context but has no ancestor (or its is own ancestor).  

This does however still lead to an infinite recursion during change propagation. This recursion is stopped by detecting the cycle.

Also, the class MetaContext - which is a regular object - stores its state in its own unique instance! 

This design is necessary to allow objects created during a transformation function to be used later in a "regular" context. 


---

#The big picture

![Big_picture_uml](%assets_url%/files/2e/l0b3ui8tn1c7e2q6tdmy56ohivgwxk/big-picture.png)

The picture on the right is then a recap of the system from a high level perspective.


---

#Other implications


-  In which context are classes initially created and initialized?
-  Object equality is contextual
-  Object cloning is cross contextual
-  Continuation retains the original context
-  When a block is forked, it inherits the context of the parent block.
-  Reflection itself
