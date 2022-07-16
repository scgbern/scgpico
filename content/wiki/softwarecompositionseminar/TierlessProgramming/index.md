---
Title: Tierless Programming and Reasoning for Software-Defined Networks
---
#Tierless Programming and Reasoning for Software-Defined Networks
[Shriram Krishnamurthi](http://cs.brown.edu/~sk/),
Brown University

Software Composition seminar, 2015-09-22

Modern network software is implemented across two tiers: the data
plane, which contains packet-processing rules implemented efficiently
on switching hardware, and the control plane, which implements
fundamental algorithms, policies, and business rules that determine
what the data plane should do. Thus, programming the network is akin
to programming a two-tier, massively distributed system, where each
node has heterogeneous processing capabilities. In addition, the
persistent store on the controller represents a third tier.

We have designed a language, Flowlog, for programming software-defined
networks. Flowlog provides a ``tierless\'' abstraction that unifies
descriptions of control, data, and external state, simplifying
programs and making it easier to express invariants that cross-cut
tiers. Flowlog is implemented by a compiler with an optimality
result. The language's tierless nature enables us to tackle several
problems: topology-independent verification, differential analysis to
aid program evolution, transitioning existing networks by compilation,
and more.

Shriram Krishnamurthi is a Professor of Computer Science at Brown
University.  With collaborators and students, he has created several
influential systems: DrRacket (programming environment), Margrave
(security policy analyzer), FrTime and Flapjax (reactive programming
languages), Lambda-JS and TeJaS (semantics and types for JavaScript),
and Flowlog (software-defined networking programming language and
verifier).  He is a co-author of "How to Design Programs" and author
of "Programming Languages: Application and Interpretation" and
"Programming and Programming Languages".  He coordinates the Bootstrap
math-and-computing outreach program.  He won SIGPLAN's Robin Milner
Young Researcher Award, and Brown's Henry Merritt Wriston Fellowship
for distinguished contribution to undergraduate education.  He has
authored twelve papers recognized for honors by program committees.
