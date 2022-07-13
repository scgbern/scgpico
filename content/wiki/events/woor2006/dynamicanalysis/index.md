---
Title: Dynamic Analysis
---

The goal for the Dynamic Analysis working group during WOOR is to spend 1/2 a day comparing the results our tools/approaches recovered from the same case. Here are some instructions to you in order to make the necessary preparations.

#THE SCENARIO
Use latest stable release (ArgoUML version 0.18.1)

1) start up ArgoUML (java -jar argouml.jar)
2) Explicitly create a new project instance by clicking the leftmost icon
which stands for "New project"
3) Draw a simple class diagram consisting of 5 classes

-  Class Person, no attributes, no methods
-  Class Student with attributes "numberOfCourses: int" and "grades: vector" and methods "learn(): void
-  Class Professor with attribute "wage: double" sure, professors earn a lot, :)and method "teach(): void"
-  Subclass relationship between Person-Student and Person-Professor
-  Class BachelorStudent no attributes, no methods
-  Class MasterStudent no attribues, no method
-  Subclass relationship between Student-BachelorStudent and Student-MasterStudent
4) Select "Layout" from the "Arrange" menu to make sure the layout is nice and tidy. You should result in a diagram which looks like the following [ArgoUML screendump](%assets_url%/files/48/6b96mlmbizz28vzj298vxdxawjdsm8/ArgoUML%20screendump).
5) Save the project and give it a name.
6) Close ArgoUML

# THE PAPERS
Below find a short summary for each of the papers, followed by some questions which may help you see how your tool/approach might complement another.
1. Marc Roper, Murray Wood. Neil Walkinshaw
Extracting User-Level Functions from Object-Oriented Code

This paper addresses the issue of mapping functional requirements (e.g. use cases, user-level function, features) on code (which classes/methods implement that requirement ?).
The authors use a static slicing approach which returns the call graph that implements te functional requirement. However, the user must supply some "landmark methods" in order to help the slicing tool minimize the call graph.
Questions to address during the experiment:

-  How are the landmarks chosen ? Can the other approaches/techniques help there ? (for instance the sequence diagrams/state charts in paper 5)
-  Is slicing better than the other dynamic approaches in terms of false negatives and false positives ? For instance, could your tool recover parts of the call graph which were not identified by the normal dynamic approaches, yet do implement that functional requirement ?

2. Michael Pacione
VANESSA: Visualisation Abstraction Network for Software Systems Analysis
This paper starts from the observation that software visualization tools normally address different abstraction levels (e.g. code, activity diagrams,  sequence diagrams, reflexion models, deployment diagram, use-cases). Sometimes it is possible to automatically go from one level to another, sometimes human intervention is necessary.
Questions to address during the experiment:

-  Is it feasible to extract a static model (such as the reflexion view) from a dynamic model (such as the sequence diagram). How much manual intervention is necessary for that ? And can other approaches help to minimize that manual intervention ? (For instance, the data-mining in paper 3)
-  As far as automatic mapping concerns, does the mapping from sequence diagrams to state-charts (see paper 5) fall into that category ?

3. Andy Zaidman, Serge Demeyer
Mining ArgoUML with Dynamic Analysis to Establish a Set of Key Classes for Program Comprehension
This paper uses a data-mining algorithm on a dynamic trace to recover the "key classes" from the system.
Questions to address during the experiment:

-  How can one be sure that the classes really are "key" ? For instance, do they correspond with the reflexion model in paper 2 ?
-  Does your paper find other classes than the measures in paper 4

4. Orla Greevy
Characterizing the Functional Roles of Classes and Methods by Analyzing Feature Traces
This paper addresses the issue of mapping functional requirements (more precisely  features) on code (which classes/methods implement that feature ?).
This paper uses a dynamic approach, i.e. it gathers a trace for the given feature and analyses that trace. However, to handle the unwieldy size of the trace the authors use measurements to compact the data without loss of information about the relationship between features and the classes (or methods) implementing that feature.
Questions to address during the experiment:

-  Can your approach complement the other techniques (i.e. choosing landmark methods for paper 1)
-  Does your technique identify different classes than the ones returned by the data-mining technique in paper 3

5. Tewfik Ziadi Yann-Gaël
Automated Reverse-engineering of UML v2.0 Dynamic Models
This paper extracts sequence diagrams and statecharts from traces in several steps. First, several traces are gathered and then a number of basic sequence diagrams are generated. Second, the basic sequence diagrams are combined in a single sequence diagram which is made readable using the composition operators provided by UML2.0 (seq, alt, loop, ...). Third, the information from the trace is complemented with information obtained from a static analysis to refine the Sequence Diagrams. Finally, they derive a statechart from a set of sequence diagrams.
Questions

-  How does this approach fit into the abstraction levels mappings from paper 2
-  If you generate statecharts for the key-classes identified in paper 3, and 4, what does this render.
-  Can these statecharts/sequence diagrams help in identifying landmark methods as mentioned in paper 1. 
