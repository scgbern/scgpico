---
Title: GUI to select and collect reflective entities and operations for Geppetto
---

Geppetto is a framework providing unanticipated partial behavioral reflection in Smalltalk (i.e., Squeak). Geppetto allows the developer to analyze and adapt the behavior of running applications by introducing so-called hooks, small pieces of code, into the binary (i.e., bytecode) of methods. Geppetto follows the model of hooksets and links, first proposed by [Reflex](http://reflex.dcc.uchile.cl/).

To select reflective entities (i.e., packages, classes and methods which should be reflected with Geppetto) and to select specific operations to be reified (e.g., a message send to method #size in a reflective entity), the programmer has to enumerate and specify these selections in source code which is both time-consuming and complex. Furthermore, it is hard to see the "big picture", e.g., to see which entities of the system are currently reflective (i.e., where hooks are installed). 
First, we would like to have a GUI allowing us to select the desired reflective entities interactively. This can be a special kind of system browser or an enhancement of the existing browser. In this browser we can select packages, class categories, classes and methods in which we want to have reflection. In all these selected entities we should be able to select the specific operations to be reified. We can then define a predicate, if needed, defining which occurrences of these operations have to be reified at runtime. As a result, this GUI installs the resulting hook code at the desired places into the system, after having gathered all the required information. The exact Smalltalk code resulting out of these definitions should be stored in a method.
Second, we want to see in this browser where hooks are already installed, i.e., which packages, classes, methods contain hooks (that is, they are reflective), and at which operations these hooks are inserted in those methods to get easily the "big picture" of the current reflective state the system is in.

This project has to be done in the Squeak environment (Squeak 3.9 or newer).

Contact: <a href="mailto:roethlis@iam.unibe.ch">roethlis@iam.unibe.ch</a>

