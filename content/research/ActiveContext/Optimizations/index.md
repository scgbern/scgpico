---
Title: Optimizations
---

It's quite clear that implemented *as-is*, the ActiveContext would imply a huge performance overhead. 

Optimizations can be envisioned to drastically improve the performance. Such optimizations should however **preserve the semantic of the conceptual model**, which can then still be used to reason about.

#Lazy transformation

To avoid the propagation of each change across all context when an object is modified, lazy transformation could be used. 

#Context-local object

With lazy transformation, object used only from within one context may be subject to aggressive optimization. We can notably image to store the state of in the object as usual, and move it the context only if the object is accessed from more than one context.

Assuming that many object are context-local, this could reduce the overhead significantly.

#Copy-on-write

Meta object such as class themselves will be accessed from several context, which can represent a significant overhead performance wise and memory wise. Though these objects are not context-local, their state should not change across context. A natural optimization to think about is then copy-on-write &mdash; state gets replicated only if it changed.

#Lock acquisition

Reading and writing state is delegate to a context which usually performs the change the action with an exclusive lock which is costly. Technique to reduce this overhead could be envisioned. The goal is to provide the *same guarantee* as the code in a non-contextual model, but no more. 
