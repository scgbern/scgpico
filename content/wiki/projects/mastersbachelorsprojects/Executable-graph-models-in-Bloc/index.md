---
Title: Executable graph modes in Bloc
---

Executable graph models in Bloc

Many kinds of software models are based on graphs, like Finite State Automata (FSAs), Petri nets, and various UML models.
The goal of this project is to experiment with ways to build executable models

experiment with ways to quickly construct graphs (syntax), and to assign an interpretation to them (semantics).
For example, an FSA could be specified in Pharo Smalltalk as follows:

```eg4nodes
  ^ self
    nodes: (1 to: 4)
    edges: { 1->2. 1->3. 2->3. 3->2. 3->4 }
    start: 1
```

The resulting graph can be interpreted as an FSA, so that clicking on any target node that follows the currently highlighted node will cause the FSA to change state:

![http://scg.unibe.ch/download/oscar/GT/GT-graph4.png](http://scg.unibe.ch/download/oscar/GT/GT-graph4.png)

Possible tasks:


-  Develop further examples of Petri nets, Nested Statecharts, Graph transformations ...
-  Build an interactive graph editor (syntax)
-  Develop a high-level (fluent) interface for specifying execution semantics

Learning outcomes:


-  Gaining experience with a live programming environment (Pharo Smalltalk)
-  Learning to work with a modern graphical framework (Bloc/Glamourous Toolkit)
-  Learning about modeling with graphical formalisms


#Contact
[Oscar Nierstrasz](%base_url%/staff/oscar)
