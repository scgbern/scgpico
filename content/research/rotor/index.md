---
Title: Traits in C#
---
#Traits in C#
*Traits in C#* is a project funding by [Microsoft Research](http://research.microsoft.com/) as a [Rotor Project](http://research.microsoft.com/Collaboration/University/Europe/RFP/Rotor/). The goal of the project was to investigate means to apply traits to statically typed languages such as C#. The project results included a formal investigation of traits in the context of Featherweight Java, a report on the problems and issues concerning the integration of traits into statically typed languages, and a prototype implementation of traits for C# by means of ``flattening\'' traits to the base language. (See the Publications and Downloads sidebar.)

| | |
|---|---|
|**Funding:**|25'000.&#8212; Euros
|**Period**:|March 1, 2004 - Sept. 1, 2005

#Contributors

- S. Ducasse (University of Berne, Switzerland)
- O. Nierstrasz (University of Berne, Switzerland)
- N. Schaerli (University of Berne, Switzerland)
- R. Wuyts (Universit&eacute; Libre de Bruxelles, Belgium)
#External participants

- A.P. Black (Oregon Health and Science University, USA)
- P. Cointe (Ecole des Mines de Nantes, France)
- L. Liquori (Inria, France)
#Abstract

*Traits* offer a simple compositional model for building classes from groups of methods and a small amount of glue code.
This project will investigate how to apply traits to statically typed programming languages, in particular C#.
The first experiments with Traits have been carried out with Smalltalk, a dynamically-typed language. Traits have proven to dramatically improve code reuse, while avoiding the fragility problems introduced by other approaches to sharing code, such as mixins and multiple inheritance. The goal of this project is to introduce traits into C# as a representative of statically typed languages. 
*Keywords:* Language Design, Inheritance, Reuse, Composition, Mixins.
#Contributor Details
##Nathanael Schaerli
Mr. Schaerli is a PhD student in the Software Composition Group since October 2001, and has developed the first implementation of the Traits system in Smalltalk. 
 
##Prof. Dr. St&eacute;phane Ducasse
St&eacute;phane Ducasse co-directs the Software Composition Group. He obtained his Ph.D. at University of Nice-Sophia Antipolis and habilitation from the University of Paris 6. His fields of interests are: reflective systems, language design, composition of software components, design and implementation of applications and reengineering of object-oriented applications.
 
##Prof. Dr Oscar Nierstrasz
Oscar Nierstrasz is a Professor of Computer Science at the Institute of Computer Science (IAM) of the University of Bern where he has led the Software Composition Group since 1994. Prof. Nierstrasz is the author of over seventy publications and co-author of the book Object-Oriented Reengineering Patterns (Morgan Kaufmann, 2003). He is interested in all aspects of component-oriented software technology, and particularly in the design and implementation of high-level specification languages and tools to support reusability and evolution of open applications. 
##Prof. Dr. Roel Wuyts
Roel Wuyts is a professor at the Universit&eacute; Libre de Bruxelles. His current research topics revolve around four axes: Declarative Meta-Programming, particular to express software architectures; Language Symbiosis, specifically between languages of different paradigms; Components and Composition; and Development Environments with emphasis on program understanding and static analysis of source code.

##Stefan Reichhart
Stefan Reichhart is a master student at the Institute of Computer Science (IAM) of the University of Bern, having minors in Mathematics and Business Administrations. He has developed the [first prototype of traits in C#](%base_url%/download/rotor/CSharpTDemo.zip). The results of his work were [presented](%base_url%/download/rotor/SSCLI2005TraitsCSharp.pdf) at the [SSCLI Capstone Workshop 2005](http://research.microsoft.com/workshops/SSCLI2005/) at Microsoft Research.

#Project Description
##Background
We have developed a simple compositional model for structuring object-oriented programs, which we call *traits*. Traits are essentially groups of methods that serve as building blocks for classes and are primitive units of code reuse. In this model, classes are composed from a set of traits by specifying glue code that connects the traits together and accesses the necessary state.
Unlike mixins and multiple inheritance, traits do not employ inheritance as the composition operator. Instead, trait composition is based on set of composition operators that are complementary to inheritance and result in better composition properties [SDNB03] [BSD03].
Up until now traits have been developed in Smalltalk, a dynamically typed language and have proven to realize significant code reuse. The goal of this project is to introduce traits into C# as a representative of statically typed languages.
 
##Project Details
During this project we want to explore the difficulties of integrating traits in C# as a representative of statically typed languages. We plan to attack the problem both from a theoretical and an implementation point of view.
For the theoretical aspects, we plan to explore featherweight Java as a basis to represent the C# type system. We plan to obtain Baby C#, a relevant subset of C# type system. We will then extend Baby C# to introduce the trait specific aspects.
For the implementation part, we plan to extend rotor to introduce traits. Although our current implementation of traits in Smalltalk will serve as a guideline, we expect some aspects to be simpler, and others more complex. First of all, traits are essentially *compile-time* entities, used to create classes, not objects. This means that traits will only have a limited impact on the host language. On the other hand, a type system that accommodates traits must take into account that traits are highly generic, and can generate different methods of different depending on what they are composed with.
We plan to share experience with the OBASCO group of P. Cointe who is working on an integration of traits in Java by using the AspectJ introduction mechanism.
 
##Academic Relevance
Traits has been developed and fully integrated in Smalltalk. Since the first publications at ECOOP 2003 and OOPSLA 2003, traits have generated a great deal of interest, particularly concerning their possible integration in a statically typed language. Numerous other research groups have started to work on applying traits to other languages:
 

- K. Fisher and J. Reppy of the University of Chicago are developing a statically typed system [FR03]
- The group of P. Cointe started to work on traits in the context of Java and aspect-oriented programming.
- A.P. Black of the Oregon State University received an Eclipse grant to introduce traits in a limited subset of Java.
- The developers of the  VisualWorks Smalltalk are very interested in incorporating traits into VisualWorks. They plan to build a working traits prototype that should in 2004.
##Experience 
The traits model has been successfully implemented in the open-source Squeak environment. We are currently reimplementing it and plan to bootstrap the complete system, i.e., have the first object-oriented language and libraries fully implemented using traits. 

#Project Plan
##Deliverables/Milestones

| | |
|---|---|
|September 2004|First version of the type system. Detailed evaluation of rotor, including feasibility experiments exploring strategies for implementing traits in rotor.
|March 2005|Adaptation of type system to C#/rotor. Prototype implementation of traits in rotor.
|September 2005|Implementation of type-checker for rotor traits. Case study experiments applying rotor traits to existing code bases.
 
##Intellectual Property 
We plan to publish the results in international conferences such as OOPSLA and ECOOP, as well as journals, such as ACM TOPLAS.
All the code will be released as open-source under the BSD license.
#Supporting Information
##Costing
 

| | |
|---|---|
|Travel with external collaborators|5000 Euros
|Student salary|20000 Euros
|Total|25000 Euros
 
##References

[BSD03] Andrew P. Black, Nathanael Sch&auml;rli and St&eacute;phane Ducasse, &quot;Applying Traits to the Smalltalk Collection Hierarchy,&quot; *Proceedings OOPSLA 2003 (International Conference on Object-Oriented Programming Systems, Languages and Applications)*, October 2003, pp. 47-64, 26 accepted papers on 142 (18%).
[SDNB03] Nathanael Sch&auml;rli, St&eacute;phane Ducasse, Oscar Nierstrasz and Andrew Black, &quot;Traits: Composable Units of Behavior,&quot; *Proceedings ECOOP 2003*, LNCS, no. 2743, Springer Verlag, July 2003, pp. 248-274.
[SB03] Nathanael Sch&auml;rli and Andrew P. Black, &quot;A Browser for Incremental Programming,&quot; *Computer Languages, Systems and Structures*, 2003, (To appear, special issue on Smalltalk).
[SNDWB04] Nathanael Sch&auml;rli, Oscar Nierstrasz, St&eacute;phane Ducasse, Roel Wuyts and Andrew Black, &quot;Traits: The Formal Model,&quot; Technical Report, no. IAM-02-006, Institut f&uuml;r Informatik, November 2002, Technical Report, Universit&auml;t Bern, Switzerland, Also available as Technical Report CSE-02-013, OGI School of Science &amp; Engineering, Beaverton, Oregon, USA.
[FR03] Kathleen Fischer and John Reppy, &quot;Statically Typed Traits,&quot; Technical Report 2003-13, University of Chicago, Computer Science Department http://www.cs.uchicago.edu/research/publications/techreports/TR-2003-13
