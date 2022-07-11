---
Title: Enhancing Geppetto with structural reflection
---

Geppetto is a framework providing unanticipated partial behavioral reflection in Smalltalk (i.e., Squeak). Geppetto allows the developer to analyze and adapt the behavior of running applications by introducing so-called hooks, small pieces of code, into the binary (i.e., bytecode) of methods. Geppetto follows the model of hooksets and links, first proposed by [Reflex](http://reflex.dcc.uchile.cl/).
This projects aims at also adding support for unanticipated <i>structural</i> reflection to Geppetto. Structural reflection allows the developer to change the structure of a program at runtime, e.g., to add new methods or instance variable to classes, to change the inheritance, or simply to analyze the structure of a program at runtime.
Smalltalk already offers an advanced support for structural reflection. Hence it is interesting to see how this existing support for structural reflection can be integrated into Geppetto to get an easy-to-use framework for both, efficient behavioral and structural reflection.
