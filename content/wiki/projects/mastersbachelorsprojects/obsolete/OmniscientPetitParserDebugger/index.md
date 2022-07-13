---
Title: An Omniscient debugger for PetitParser
---

#Debugging PetitParser

PetitParser is a framework that makes it possible to model grammars and parsers as objects that can be reconfigured dynamically. Furthermore, it makes it easy to dynamically reuse, compose, transform and extend grammars. 

Debugging PetitParser using a generic debugger is not a straightforward activity. One one hand, a generic debugger only provides low-level operations, like stepping over instructions or into function calls. The debugging operations actually needed when working with PetitParser do not map well onto them. On the other hand, when working with PetitParser we need to see contextual information like the source code of grammar productions and the input being parsed. Given the contextual nature of these information it is highly unlikely that generic debuggers will contain them by default. 

To address these concerns we developers a domain-specific debugger aware of PetitParser that provides debugging operations at a higher level of abstraction and relevant contextual information. Apart from this debugger, PetitParser also comes with a dedicated browser for developing parsers.

#Problem

The domain-specific debugger we developed greatly improves the debugging of parsers, however, it still has some limitations, as developers can only go through the execution forward. When working with parsers it is useful to go back through the execution to see what parsers didn't match a certain input and understand why. 

#Goal

The goal of this project is to create an omniscient, back-in-time debugger for PetitParser. It's omniscient as it should record all information relevant when working with PetitParser. It's back-in-time as it should be able to go back through the execution, one parser at a time.

# Benefits/Requirements/Challenges

This project will give you the chance to learn about parsing and about the construction of debuggers. The project will be done in [Pharo](http://www.pharo-project.org/%20), an open-source Smalltalk-inspired environment. You will see a language quite different from Java and C#. The new debugger will be implemented using the ["Moldable Debugger"](http://scg.unibe.ch/research/moldabledebugger)[2][3], a framework for creating domain-specific debuggers. Extracting the required information will require the usage of code instrumentation.

You should apply for this project if you have good programming skills in any object-oriented language. Knowing anything about Pharo or parsing is not required.

Available as a master project. (Different parts of the project can be extracted into bachelor projects.)

# References


-  [1] [PetitParser](http://scg.unibe.ch/archive/papers/Reng10cDynamicGrammars.pdf%20)
-  [2] [Towards a Moldable Debugger](http://rmod.lille.inria.fr/archives/dyla13/dyla13_4_Towards_a_Moldable_Debugger.pdf)
-  [3] [The "Moldable Debugger" framework](http://scg.unibe.ch/research/moldabledebugger)
-  [4] [A first look at the Pharo debugger](http://chisvasileandrei.wordpress.com/2013/10/24/a-first-look-at-the-pharo-debugger/)
-  [5] [Design and Implementation of a Backward-In-Time Debugger](http://scg.unibe.ch/archive/papers/Hofe06aUnstuckNode.pdf%20)
-  [6] [Debugging backwards in time](http://www.lambdacs.com/debugger/AADEBUG_Mar_03.pdf)
-  [7] [Practical Object-Oriented Back-in-Time Debugging](http://dl.acm.org/citation.cfm?id=1428542)
-  [8] [Scalable Omniscient Debugging](http://pleiad.dcc.uchile.cl/papers/2007/pothierAl-oopsla2007.pdf%20)

Contact: [Andrei ChiÈ](%base_url%/staff/andreichis)
