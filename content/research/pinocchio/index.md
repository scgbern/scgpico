---
Title: Pinocchio
---

<span style="float: left"><img src="http://bender.unibe.ch/~tverwaes/plogo.png"/></span>

**Pinocchio** is a virtual machine which natively implements a variation of the Smalltalk programming language in which the interpreter itself is meta-circularly present. This meta circular interpreter allows developers or researchers to experiment with programming languages variations and debuggers at low cost. Instead of changing the code of the VM written in C, the meta-circular interpreter can be sub-classed and manipulated as any other OO entity &mdash; code running at the application-level and the interpreter-level belong then to the same object space. This approach overcomes limitations of other reflection-based systems for which programming language variations are inherently restricted by the features of interpreter itself.

A full package including the sources and the current development environment can be found at [http://scg.unibe.ch/download/pinocchio/](http://scg.unibe.ch/download/pinocchio/).

For code see [http://github.com/pinocchio/p/](http://github.com/pinocchio/p/) and for bugs see [http://code.google.com/p/pinocchiovm/issues/list](http://code.google.com/p/pinocchiovm/issues/list).
