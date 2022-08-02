---
Title: Dynamic Ownership
---
#Dynamic Ownership
![Box](%assets_url%/files/52/qe6dj7h8lejkizkpaqattrqist5qjf/2711987026_ff01a9e3a5.jpg) According to the principle of encapsulation, objects should expose stable, limited interfaces and hide their implementation details. Aggregates are opaque boxes that should hide their internals. For instance, a list implemented internally with linked nodes should not reveal their existence to clients of the list. If a client of an object can reference its internals, invariants might be broken with dangerous consequences. 

Unfortunately, this "boxing" of objects is usually implicit in programming language, and is by consequence hard to enforce. Ownership types have been propose to make this boxing explicit. In this project, we propose to apply ownership to dynamic languages and explore its benefits, notably to catch bugs.

We have built a first version of dynamic ownership with the following features:


-  Classes define several named interfaces/protocol. At creation time of an object, one can specify two named interfaces/protocol and an owner. The object exposes either interface depending on the dynamic context: one interface is for "internal" access, and another is for "external" access. For instance, the external interface might expose only readonly methods, a limited interface, ar no interface at all. Ownership can be transferred later on if necessary.
-  When an object reference crosses an encapsulation boundary, a reflective hook is invoked on the owner of the object. This hook complements the encapsulation policy for the object. For instance, if the strongest form of encapsulation is desired, the hook can raise an error and thus prevent the object from leaking its owner. We distinguish boundary crossing resulting from return statement and from ownership transfer. 

**Publication**

Erwann Wernli, Pascal Maerki, Oscar Nierstrasz. [Ownership, Filters and Crossing Handlers.](%base_url%/scgbib?query=Wern12c&display=abstract) In Dynamic Language Symposium (DLS), to appear, 2012
