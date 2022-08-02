---
Title: Object Oriented Security
---
#Object Oriented Security
Extensible systems might dynamically load plugins, components or sub-systems. It is critical in this context that hosted modules can not compromise their host. Hosted modules must be isolated and the principle of least privilege enforced. Sadly, object oriented languages make this hard.

*Project description*

1. In the first phase the student will study secure languages and related constructs:


-  Languages: Java, Caja, E, Newspeak
-  Constructs: contract, mirror, proxy, membrane, ownership, class loader

He/she will then study the tension between security and reflection, security and aliasing, security and polymorphism.

After this phase, the student is able to write an insightful essay about object-oriented security that will be the intro of his thesis.

2. Based on problems identified in 1, the student will design a language extension that increases security.

The student can propose an extension. Otherwise the following will be considered: Rethinking Class Sealing. The goal is to design a mechanism that prevents that hosted modules abuse subclassing to compromise their host. 

3. The student will adapt an extensible system with his approach and assess the utility and performance of the mechanism.

*Requirements*

Strong analytical skills, strong programming skills, passion for object-oriented thinking

*References*


-  http://bracha.org/newspeak-modules.pdf
-  http://en.wikipedia.org/wiki/Object-capability_model
-  http://www.artima.com/intv/bloch5.html
-  http://stackoverflow.com/questions/2481862
-  http://en.wikipedia.org/wiki/Futures_and_promises (read-only view)
-  more to be added
