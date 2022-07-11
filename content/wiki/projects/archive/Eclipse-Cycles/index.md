---
Title: Detecting package cycles within eclipse
---

Java projects are tipically structured in packages which logically depend each from another. 
A logical dependency between two packages exists whenever elements contained in the first package concretely depend from elements of the second (or vice-versa). 

Concrete dependencies are of 4 types: 

-  **Method parameter dependency**: package A depends on package B, if a method x (contained in a class belonging to A) has a parameter of a type corresponding to a class from package B. 
-  **Return type dependency**: package A depends on package B, if a method x (contained in a class belonging to A) has a return type which corresponds to a class from package B. 
-  **Variable reference dependency**: package A depends on package B, if a method x (contained in a class belonging to A) defines a variable of a type corresponding to a class from package B. 
-  **Method invocation dependency**: package A depends on package B, if a method x (contained in a class belonging to A) invokes a method declared in a class from package B. 
-  **Inheritance dependency**: package A depends on package B, if a class X (belonging to A) subclasses a class/interface from package B. 

Concrete dependencies can be detected by statically analyzing source code.
Once identified, they can be used to derive logical dependencies between packages. 

The goal of this project is to build an Eclipse plugin that detects cyclic dependencies within a project. 

This can be done in two ways: 

-  Running an analysis within Eclipse. 
-  Running an analysis using an external tool \+ importing the results into Eclipse. 

The first approach can be implemented by building an algorithm that queries the Eclipse JDT model (using SearchEngine API: [javadoc](http://help.eclipse.org/helios/nftopic/org.eclipse.jdt.doc.isv/reference/api/org/eclipse/jdt/core/search/SearchEngine.html), [example](http://www.programcreek.com/2012/05/eclipse-jdt-tutorial-find-all-references-of-a-method/)). 
The second can be implemented by building a tool in [Pharo smalltalk](http://www.pharo-project.org/home) on top of [Moose](http://www.moosetechnology.org/), a powerful platform for software and data analysis. 

Both approaches are equally complex and will put you in front of different kinds of interesting challenges. 
As a student, you are asked to choose one of the two approaches and implement a fully functioning eclipse plugin showing a list of all package cycles contained in a project. 

If you are interested in the project, feel free to contact me -> 
[Andrea Caracciolo](%base_url%/staff/Caracciolo)

Github project: 

-  [https://github.com/DominicSina/CycleFinder](https://github.com/DominicSina/CycleFinder)

Related work: 

-  [http://classycleplugin.graf-tec.ch/index.html](http://classycleplugin.graf-tec.ch/index.html)
-  [http://java.llp.dcc.ufmg.br/dclsuite/](http://java.llp.dcc.ufmg.br/dclsuite/)
