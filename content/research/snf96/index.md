---
Title: Infrastructure for Software Component Frameworks 
---
#Infrastructure for Software Component Frameworks 
*Infrastructure for Software Component Frameworks* is a research project of the [Software Composition Group]() at the University of Berne. The project is led by [Prof. Oscar Nierstrasz](http://www.iam.unibe.ch/~oscar/). The project is funded initially for two years by the Swiss National Science Foundation (SNSF # [2000-46947.96](http://p3.snf.ch/Project-46947)).

The following text is extracted from the original research proposal.

#Summary
One of the key problems in the development of modern software systems is planning for change: open systems must be flexible in that they must be easy to adapt to new and changing requirements. Increasingly systems developers have come to the consensus that the best way of dealing with open requirements is to build systems out of reusable components conforming to a "plug-in architecture". The functionality of an open system can then be changed or extended by substituting components or plugging in new components.

Quite recently, interest in software reuse has shifted from the reuse of single components (procedures, functions, classes), to whole abstract system designs or architectures. A software system that may be reused at this level for creating complete applications is called a framework. The idea is that it should be relatively easy to produce a range of specific systems within a certain domain starting from the framework software.

Unfortunately this is not so easy to realize, mainly because (object-oriented) programming languages don't provide specific abstractions and support for building frameworks. We identify especially (a) a lack of abstractions for building and adapting class-like components in a framework or domain specific way, (b) a lack of abstractions for defining cooperation patterns, and (c) a lack of support for checking the correctness of compositions.

This project proposes basic research to improve the infrastructure for building frameworks. We therefore plan to do the following work:


-  Develop support for building and using framework and/or domain specific abstractions:
	-  A composition language will be designed and implemented which supports the definition of new abstractions based on a rigorous formal semantics. This semantics will be based on a formal model of objects and components being developed in the ongoing research project ["Composing Active Objects"](%base_url%/research/snf94) (NFS 2100-040610.94). 
	-  The meta-modelling technique will be developed in the context of a visual composition environment. The environment and technique will support component designers by providing concepts for representing and manipulating software abstractions. The semantics of abstractions is based on (meta-level) interpretation. 

-  Develop support for checking correctness:
	-  A proof system will be developed for verifying the correctness of software components and applications built from components. This work aims to apply known techniques for the verification of sequential programs and extend them to component-based systems specified using the composition language.

-  Build a framework to test our ideas:
	-  An experimental coordination framework will be developed consisting of composable software abstractions for coordinating software components in multi-agent systems. 


*Keywords:* open systems development; software architecture; object-orientation; active objects; software components; composition; frameworks.

 
#Research plan

##State of the art and related work

Open systems can be classified generally into (i) concurrent object-based systems [38], (ii) open distributed systems [10][42][47], (iii) and multi-agent systems [16][24][25][49]. These kind of systems may be built using "traditional" object-oriented programming languages that don't provide domain-specific abstractions other than classes. This incorporates, however, many problems.

A first problem is, that since only classes incorporate abstractions, each use of an abstraction (e.g, for incorporating synchronization or distribution) corresponds to the explicit instantiation of an object, which leads to systems that are complex and thus difficult to understand and adapt [6].

A second problem is that specialization of object-oriented software is difficult because the inheritance interface cannot be explicitly specified in modern object-oriented languages [36][45]. More and more, software reuse is based on the reuse of whole class hierarchies called "frameworks" [12][26]. The development of open systems such as distributed systems [43] and network protocols [23] using frameworks is enjoying an increasing interest. This kind of reuse is correspondingly more difficult for essentially the same reason: one cannot specify a specialization interface for framework components.

 

A framework defines the common interfaces and functionality for a set of applications, but leaves open the implementation details of these classes. It is more than just a library because it defines not only reusable functionality but reusable collaborations. Problems in the specialization of an object-oriented framework in order to build specific systems not only lie in the specialization, using inheritance, of specific classes. A developer who specializes or adapts a framework must also understand the way classes cooperate, and the role of each individual class. This is the reason why there is an increasing interest in so-called "black-box" frameworks [27]: Frameworks where the building of specialized systems is less dependent on the use of inheritance, and more on object-composition. Individual applications are built as compositions of parameterized objects. Many [design-patterns](http://st-www.cs.uiuc.edu/users/patterns/patterns.html) [15] (see also further on in this section) therefore describe design elements that allow for the use of object-composition for building systems. Design patterns, while helping to document object collaborations in frameworks, do not address the problem of how to adapt and evolve frameworks.

 

Current interest in "Componentware" [46] reflects also a shift in attention from a white-box class-based approach towards black-box components. Real frameworks of connectable black-box components are not yet supported by these approaches, however.

 

That open systems are hard to build using "traditional" object-oriented languages has led to much work on specific languages that do provide abstractions for the development of open systems. Work has for instance been done on concurrent object-oriented languages [3][30][31][50], coordination languages [8][17] and languages for distributed artificial intelligence [13] Most of this work is, however, concentrated on the improvement of expressive power rather than on software composition and reuse.

 

Coordination languages are languages for coordinating multi-agent systems; that is, a coordination language can be thought of as a scripting language for components that are software agents. Several of these languages, such as [Linda](http://www.cs.yale.edu/HTML/YALE/CS/Linda/linda.html) [7], support the specification of coordination through a communication medium known as a tuple space, or more generally, a computational model defined in terms of re-write rules, as in Gamma [5] and LO [4].

 

An aspect lacking in these languages is the explicit representation of system architecture. [Darwin](http://www-dse.doc.ic.ac.uk/~regis/regis.html) [33] is a "configuration language" for distributed systems that makes architecture explicit by specifying the connections between software agents. Representing this information explicitly is the key to making open systems flexible, since system evolution is a question of reconfiguring components and their interconnections.

 

Another problem in most language based approaches is that the set of abstractions is fixed, which makes such approaches inherently limited in scope. An alternative is thus to allow the introduction of new abstractions within the context of an object-oriented, class-based approach [6].

 

One important focus of research concerns abstractions for cooperation. Various proposals have been made recently for specifying high-level class-cooperation abstractions that allow classes to be "plugged" together, including Contracts [18], Abstract Communication Types (ACTs) [2], Generic Synchronization Policies (GSPs) [34], and, in Switzerland, Gluons [41].

 

Design-patterns [15] have so-far been presented and used as providing specific design guidelines for building flexible object-oriented systems given certain requirements. Design-patterns provide, amongst others, guidelines for setting-up and adapting class-structures. So-far, no approaches have been presented that transform these guidelines into rules that can be enforced in the software so as to make adaptation and extension of class structures easier.

 

Software abstractions can be specified by mapping them to a formal computational model that captures the essential features of open systems. A formal approach will facilitate reasoning about combinations of programming language features. The first formal model of open systems was Hewitt's actor model [21]. It has been used as a computational model for many programming languages, but has not been as useful so far for reasoning about open systems. More recently, there has been a great deal of work on so-called process calculi - tiny, formal languages for specifying software agents and their interactions. Process calculi have a well-developed theory, and have been successfully used to specify and reason about coordination languages [9].

 

Milner's [pi calculus](http://www.cwi.nl/~arie/picalc.html) [37] is a process calculus that seems especially suited to capturing the semantics of open systems components in general, and concurrent objects in particular. Communication, concurrency, dynamic instantiation and mobility are expressed in terms of a small set of operators and a simple and elegant operational semantics. The pi calculus has proved rich enough to model conventional object-oriented language features [48] as well as concurrent objects [39]. [PICT](http://www.cs.indiana.edu/hyplan/pierce/pierce/ftp/pict/Html/Pict.html) [40] is an experimental programming language that combines functional, object-oriented and concurrent programming features by translation to a core language based on the pi calculus. In Switzerland, Dami has developed [lN](http://cuiwww.unige.ch/OSG/Hop/hop.html), an extension of the l calculus for modeling object-oriented language features [11].

 

Introduction of new abstractions is also possible via a reflective approach[32]. In such an approach abstractions are reified" (i.e., concretely represented) in the system itself. Meta-level software can give meaning to these reified abstractions. Run-time evolution of open systems is also a reflective activity, in which reified knowledge about system components and interfaces is used. CLOS [29] is a programming language that provides a "meta-level protocol" - sets of methods that reason about the class by viewing a class, and the information about it as a reified structure of meta-objects - which allows the meaning of a class to be adapted, or new abstractions to be added. Klas, Neuhold et.al [30] have introduced possibilities to build parameterized class-abstractions. Their approach is rather complicated and has not yet been applied to software composition.

 

One of the influential traditional techniques for the formal specification and verification of software programs is based on predicate calculus and hoare logic [22],[13]. This technique is well investigated and parts are even automated [20].

 

The wp calculus provides an elegant means of reasoning about these kind of specifications and verifications. It provides a clear non-operational view of sequential programs and supports program derivation in certain cases. Its application to procedural abstraction, also for the purpose program derivation, has been thoroughly investigated [19].

 

Compositional reasoning is difficult in sequential systems. Reasoning about the specification and correctness of components in isolation is difficult due to the lack of knowledge about the environment (the other components) with which it will interact. Work is being done on determining the assumptions that can be made from the components point of view [1]. This has, however not yet been applied to an object-oriented approach. One of the problems in such an approach is the atypical notion of program state that is introduced due to the dynamically changing number of objects in the run-time system. Compositional reasoning in concurrent systems, where sources of problems lie for example in state explosion and interference, is even more difficult.

 

pobl (pronounced "pobble") proposed by Jones [28] is a language for the formal specification of concurrent object-based programs. Its formal semantics is given by translation to the pi calculus. In this approach many problems remain with respect to the verification, notation, and its applicability to composition.

 

[1] Mart&iacute;n Abadi and Stephan Merz , "An Abstract Account of Composition ," Mathematical Foundations of Computer Science , J. Wiedermann and Petr Hajek (Ed.), LNCS 969, 1995, pp. 499-508.

 

[2] Mehmet Aksit, Ken Wakita, Jan Bosch, Lodewijk Bergmans and Akinori Yonezawa, "Abstracting Object Interactions Using Composition Filters," Proceedings of the ECOOP '93 Workshop on Object-Based Distributed Programming, R. Guerraoui, O. Nierstrasz and M. Riveill (Ed.), LNCS 791, Springer-Verlag, 1994, pp. 152-184.

 

[3] P. America, "POOL-T: A Parallel Object-Oriented Language", Object Oriented Concurrent Programming, (Ed.) A. Yonezawa, M. Tokoro, MIT Press, 1987, p. 199-220.

 

[4] Jean-Marc Andreoli and Remo Pareschi, "LO and Behold! Concurrent Structured Processes," Proceedings OOPSLA/ECOOP '90, ACM SIGPLAN Notices, vol. 25, no. 10, Oct. 1990, pp. 44-56.

 

[5] Jean-Pierre Ban&acirc;tre and Daniel Le M&eacute;tayer, "The Gamma Model and Its Discipline of Programming," Science of Computer programming, vol. 15, North-Holland, 1990, pp. 55-77.

 

[6] Jean-Pierre Briot and Rachid Gerraoui, A Classification of Various Approaches for Object-Based Parallel and Distributed Programming, february 1996, Draft Manuscript.

 

[7] Nicholas Carriero and David Gelernter, How to Write Parallel Programs: a First Course, MIT Press, cop. 1990, Cambridge, 1990.

 

[8] Paolo Ciancarini, "Coordination Languages for Open System design," Proceedings of the 1990 International Conference of Computer Languages, New Orleans, March 12-15, 1990, pp. 252-260.

 

[9] Paolo Ciancarini, Keld K. Jensen and Daniel Yankelevich, "On the Operational Semantics of a Coordination Language," Object-Based Models and Languages for Concurrent Systems, P. Ciancarini, O. Nierstrasz and A. Yonezawa (Ed.), LNCS 924, Springer-Verlag, 1995, pp. 77-106.

 

[10] Jon Crowcroft, Open Distributed Systems, UCL Press.

 

[11] Laurent Dami, "Functions, Records and Compatibility in the Lambda N Calculus," Object-Oriented Software Composition, O. Nierstrasz and D. Tsichritzis (Ed.), Prentice Hall, 1995, pp. 153-174.

 

[12] L. Peter Deutsch, Design Reuse and Frameworks in the Smalltalk-80 System, T.J. Biggerstaff and A.J. Perlis (Ed.), vol. II, ACM Press & Addison-Wesley, Reading, Mass., 1989, pp. 57-71.

 

[13] E.W. Dijkstra and C. S. Scholten, Predicate Calculus and Program Semantics, Springer Verlag, 1990.

 

[14] Jacques Ferber, Jean-Pierre Briot, "Design of a Concurrent Language for Distributed Artificial Intelligence", Published in Proc. of FGCS'88, ICOT, Tokyo, Japan, Nov-Dec, 1988. Vol. 2, p. 755-762.

 

[15] Erich Gamma, Richard Helm, Ralph Johnson and John Vlissides, Design Patterns, Addison Wesley, Reading, MA, 1995.

 

[16] Les Gasser, Jean-Pierre Briot, "Object-Based Concurrent Programming and Distributed Artificial Intelligence", in Distributed Artificial Intelligence: Theory and Praxis", ed, N.M. Avouris & L. Gasser, Kluwer, 1992, pp. 81-107.

 

[17] David Gelernter, Nicholas Carriero, "Coordination Language and their significance", Communications of the ACM, February 1992, Vol. 35, N. 2.

 

[18] Richard Helm, Ian M. Holland and Dipayan Gangopadhyay, "Contracts: Specifying Behavioural Compositions in Object-Oriented Systems," Proceedings OOPSLA/ECOOP '90, ACM SIGPLAN Notices, vol. 25, no. 10, Oct. 1990, pp. 169-180.

 

[19] Wim H. Hesselink, Programs, recursion and unbounded choice, Cambridge press, 1992.

 

[20] Win H. Hesselink, "NQTHM Proving Sequential Programs," CS Reports Groningen CS-R9407, University of Groningen, The Netherlands , 1994.

 

[21] Carl Hewitt, "Viewing Control Structures as Patterns of Passing Messages," Artificial Intelligence, vol. 8, no. 3, June 1977, pp. 323-364.

 

[22] C.A.R. Hoare, "An Axiomatic Basis for Computer Programming," Communications of the ACM , vol. 12, 1969, pp. 576-583.

 

[23] Hermann Hueni, Ralph E. Johnson and Robert Engel, "A Framework for Network Protocol Software," Proceedings OOPSLA '95, ACM SIGPLAN Notices, Oct. 1995, to appear.

 

[24] Nicholas Jennings, Michael Wooldridge, "Applying Agent Technology", Applied Artificial Intelligence An International Journal, Taylor and Francis London, 9(4) 1995, pp. 351-361.

 

[25] Nicholas Jennings, "Agent Software", Proc. UNICOM Seminar on Agent Software, London, UK, 1995, pp. 12-27.

 

[26] Ralph E. Johnson and Brian Foote, "Designing Reusable Classes," Journal of Object-Oriented Programming, vol. 1, no. 2, 1988, pp. 22-35.

 

[27] Ralph E. Johnson and William F. Opdyke, "Refactoring and Aggregation," Object Technologies for Advanced Software, First JSSST International Symposium, Lecture Notes in Computer Science, vol. 742, Springer-Verlag, Nov. 1993, pp. 264-278.

 

[28] Cliff B. Jones, "A pi-calculus Semantics for an Object-Based Design Notation," Proceedings of CONCUR'93, E. Best (Ed.), LNCS 715, Springer-Verlag, 1993, pp. 158-172.

 

[29] Gregor Kiczales, Jim des Rivi&egrave;res and Daniel G. Bobrow, The Art of the Metaobject Protocol, MIT Press, 1991.

 

[30] Wolfgang Klas, Ehrich J. Neuhold and Michael Schrefl, "Using an Object-Oriented Approach to Model Multimedia Data," Computer Communications, vol. 13, no. 4, may 1990 , pp. 204-216.

 

[31] Krakowiak, M. Meysembourg, V.H. Nguyen, M. Riveill, C. Rosin, "Design and Implementation of an Object-Oriented Strongly Typed Language for Distributed Applications," Journal of Object-Oriented Programming, Vol 3, N 3, 1990.

 

[32] Pattie Maes, "Concepts and Experiments in Computational Reflection," Proceedings OOPSLA '87, ACM SIGPLAN Notices, vol. 22, no. 12, Dec. 1987, pp. 147-155.

 

[33] Jeff Magee, Naranker Dulay and Jeffrey Kramer, "Structuring Parallel and Distributed Programs," Proceedings of the International Workshop on Configurable Distributed Systems, London, March 1992.

 

[34] Ciaran McHale, "Synchronisation in Concurrent, Object-oriented Languages: Expressive Power, Genericity and Inheritance," Ph.D. Dissertation, Department of Computer Science, Trinity College, Dublin, 1994.

 

[35] Bertrand Meyer, Eiffel: The Language, Prentice Hall, 1992.

 

[36] John Lamping, "Typing the Specialization Interface," Proceedings OOPSLA '93, ACM SIGPLAN Notices, vol. 28, no. 10, Oct. 1993, pp. 201-214.

 

[37] Robin Milner, Joachim Parrow and David Walker, "A Calculus of Mobile Processes, Part I/II," Information and Computation, vol. 100, 1992, pp. 1-77.

 

[38] Michael Papathomas, "Concurrency in Object-Oriented Programming Languages," Object-Oriented Software Composition, O. Nierstrasz and D. Tsichritzis (Ed.), Prentice Hall, 1995, pp. 31-68.

 

[39] Benjamin C. Pierce and David N. Turner, "Concurrent Objects in a Process Calculus," Proceedings Theory and Practice of Parallel Programming (TPPP 94), Takayasu Ito and Akinori Yonezawa (Ed.), Springer LNCS 907, Sendai, Japan, 1995, pp. 187-215.

 

[40] Benjamin C. Pierce, "Programming in the Pi-Calculus: An Experiment in Concurrent Language Design," Technical Report, Computer Laboratory, University of Cambridge, UK, May 1995, Tutorial Notes for Pict Version 3.6a.

 

[41] Xavier Pintado, "Gluons and the Cooperation between Software Components," Object-Oriented Software Composition, O. Nierstrasz and D. Tsichritzis (Ed.), Prentice Hall, 1995, pp. 321-349.

 

[42] Kerry Raymond, "Reference Model of Open Distributed Processing (RM-ODP): Introduction", CRC for Distributed Systems Technology, University of Queensland, Brisbane, Australia.

 

[43] Douglas C. Schmidt, "Using Design Patterns to Develop Reusable Object-Oriented Communication Software," Communications of the ACM, vol. 38, no. 10, October 1995, pp. 65-74.

 

[44] Randall B. Smith and David Ungar, "Programming as an Experience: The Inspiration for Self," Proceedings ECOOP '95, W. Olthoff (Ed.), LNCS 952, Springer-Verlag, Aarhus, Denmark, August 1995, pp. 303-330.

 

[45] Alan Snyder, "Encapsulation and Inheritance in Object-Oriented Programming Languages," Proceedings OOPSLA '86, ACM SIGPLAN Notices, vol. 21, no. 11, Nov 1986, pp. 38-45.

 

[46] James Udell, "Componentware," Byte, vol. 19, no. 5, May 1994, pp. 46-56.

 

[47] Steve Vinoski, "Distributed Object Computing with CORBA", C\+\+ Report magazine, July/August 1993.

 

[48] David Walker, "Objects in the pi-calculus," Information and Computing, vol. 116, no. 2, 1995, pp. 253-271.

 

[49] Michael Wooldridge, Nicholas Jennings, "Intelligent Agents", Lecture Notes in Artificial Intelligence, Springer Verlag, 1995.

 

[50] A. Yonezawa, E. Shibayama, T. Takada, "Modelling Programming in an Object-Oriented Concurrent Language ABCL/1", Object-Oriented Concurrent Programming, (Eds.) A. Yonezawa, M. Tokoro, MIT Press, 1987, p 50-90

 
#Contributions to the field by the applicants


Hybrid [58] was one of the first attempts to integrate concurrency and object-oriented features in a single programming language by unifying objects and processes through the notion of "active objects." The goal of Hybrid was to support open systems development in areas such as office information systems, where application domain concepts could be conveniently modelled as (mobile) active objects. The Hybrid project uncovered a number of technical difficulties in the integration of language features [59], and led to work in developing better formal foundations for modelling objects and specifying concurrent programming language features [56].

 

More recently (i.e., in the ongoing project [NFS 2100-040610.94](%base_url%/research/snf94)) we have been using PICT (see above) as an executable specification language for modelling object-oriented language features [64] with the goal of elaborating a formal object model in terms of the pi calculus. Preliminary results [65] indicate that most of the standard language features, such as classes, inheritance, dynamic binding, and class variables are conveniently modelled with the aid of special abstractions called meta-objects. These meta-objects are well-typed, first class processes that are responsible for specifying and controlling the encapsulation of object features. This fine degree of control is necessary for realizing the "black-box" component-oriented view of active objects.

 

We have been using the same approach to model concurrency abstractions. McHale's Generic Synchronization Policies can be faithfully modelled as process abstractions in the pi calculus [66]. The next step is to identify a set of core language features at a higher level than the primitives of the pi calculus (or core PICT) that can be more conveniently used to define concurrency abstractions, active objects, and general classes of components. We have already identified a set of key requirements for such a composition language [60] and are in the process of using the results of these modelling exercises to propose and explore specific language features that meet these requirements.

 

We have also identified a broader class of research problems concerning the support for component-oriented software development [57][61][62][63]. In addition to higher-level languages for specifying software components, generic architectures and compositions of components, there is a critical need for tools and environments for representing, storing and manipulating knowledge about open systems.

 

In [51] the principle of metalevel modelling, as it will be used in this project, has been described. The usefulness of meta-modelling is demonstrated by modelling two frameworks, one for graphical editing and direct manipulation of objects, the other for integrating services from external systems. In [52] is indicated how metalevel modelling may be used for modelling design-patterns. In the ITHACA project, certain related ideas, with respect to modelling frameworks at a meta-class level, have been used and worked out [53]. At the start of the project, a prototype visual environment will be available in which the principle of meta-modelling will be installed. This visual environment may be viewed as a continuation of the "Vista" graphical composition environment [54][55].

 

[51] Theo Dirk Meijler, "User-level Integration of Data and Operation Resources by means of a Self-descriptive Data Model," Ph.D. Thesis, Erasmus University Rotterdam, Sept. 1993.

 

[52] Theo Dirk Meijler, "The Model behind FACE: a Framework Adaptive Composition Environment," draft manuscript, IAM, U. Berne, June 1995, Submitted for publication.

 

[53] Vicki de Mey, Oscar Nierstrasz, Serge Renfer, Roberto Bellinzona, Mariagrazia Fugini, Panos Constantopoulos, Martin D&ouml;rr and Maria Theodoridou, "RECAST/Vista/SIB Integration," ITHACA.CUI-POLIMI-FORTH.92.Vista.Recast.SIB.#1, Centre Universitaire d'Informatique, University of Geneva, Dec. 1992.

 

[54] Vicki de Mey and Oscar Nierstrasz, "The ITHACA Application Development Environment," Visual Objects, D. Tsichritzis (Ed.), Centre Universitaire d'Informatique, University of Geneva, July 1993, pp. 267-280.

 

[55] Oscar Nierstrasz, Dennis Tsichritzis, Vicki de Mey and Marc Stadelmann, "Objects \+ Scripts = Applications," Proceedings, Esprit 1991 Conference, Kluwer Academic Publishers, Dordrecht, NL, 1991, pp. 534-552.

 

[56] Oscar Nierstrasz, "Towards an Object Calculus," Proceedings of the ECOOP '91 Workshop on Object-Based Concurrent Computing, M. Tokoro, O. Nierstrasz and P. Wegner (Ed.), LNCS 612, Springer-Verlag, 1992, pp. 1-20.

 

[57] Oscar Nierstrasz, Simon Gibbs and Dennis Tsichritzis, "Component-Oriented Software Development," Communications of the ACM, vol. 35, no. 9, Sept 1992, pp. 160-165.

 

[58] Oscar Nierstrasz, "A Tour of Hybrid - A Language for Programming with Active Objects," Advances in Object-Oriented Software Engineering, D. Mandrioli and B. Meyer (Ed.), Prentice Hall, 1992, pp. 167-182.

 

[59] Oscar Nierstrasz, "Composing Active Objects," Research Directions in Concurrent Object-Oriented Programming, G. Agha, P. Wegner and A. Yonezawa (Ed.), MIT Press, 1993, pp. 151-171.

 

[60] Oscar Nierstrasz and Theo Dirk Meijler, "Requirements for a Composition Language," Object-Based Models and Languages for Concurrent Systems, P. Ciancarini, O. Nierstrasz and A. Yonezawa (Ed.), LNCS 924, Springer-Verlag, 1995, pp. 147-161.

 

[61] Oscar Nierstrasz and Laurent Dami, "Component-Oriented Software Technology," Object-Oriented Software Composition, O. Nierstrasz and D. Tsichritzis (Ed.), Prentice Hall, 1995, pp. 3-28.

 

[62] Oscar Nierstrasz and Theo Dirk Meijler, "Research Directions in Software Composition," ACM Computing Surveys, vol. 27, no. 2, June 1995, pp. 262-264.

 

[63] Oscar Nierstrasz, "Research Topics in Software Composition," Proceedings, Langages et Mod&egrave;les &agrave; Objets, Nancy, Oct. 1995, pp. 193-204.

 

[64] Jean-Guy Schneider and Markus Lumpe, "Modelling Objects in Pict," Technical Report, no. IAM-96-004, University of Bern, Institute of Computer Science and Applied Mathematics, January 1996.

 

[65] Jean-Guy Schneider, Markus Lumpe, Oscar Nierstrasz, "Objects as Processes," draft manuscript, IAM, University of Berne, 1996, submitted for publication.

 

[66] Patrick Varone, "Implementation of `Generic Synchronization Policies' in Pict," draft manuscript, IAM, U. Berne, Sept 1995.

 
#Detailed research plan


Developing a framework is an inherently difficult and iterative task [26]. Fundamental adaptations of a framework are also difficult since framework functionality must be refactored to support as yet unknown applications. Moreover specialising framework classes for a specific application is not easy either since one must typically have detailed knowledge of the framework implementation to correctly specialize and extend it. These problems all boil down to difficulties in specifying, setting up, adapting, and extending class structures. We will work on (i) a textual composition language for formally specifying components, component frameworks and compositions of components, and (ii) a meta-modelling environment to support the description, modelling and evolution of frameworks.

 

Many of these problems are a result of the fact that current object-oriented technology provides insufficient support for the (re-)use of classes. For example, although most frameworks have been designed according to certain "design-patterns", there are few possibilities to explicitly support the construction and adaptation of the class structure by a tool or language that has knowledge of such patterns.

 

An important part of our work will therefore be to investigate various ways in which these kind of abstractions may be realized, both with respect to structure and semantics. To test our ideas we will apply them to frameworks for coordination.

 
##Composition Language


A composition language is a language for specifying component frameworks and applications as compositions of reusable software components [60]. It resembles a scripting language in the sense that the components themselves may be programmed in another language. It differs from a traditional programming language in the sense that applications should be specified in terms of abstractions defined in the component framework, not the primitives of the language itself. A composition language can thus been seen as a kind of "meta-language" that can be used to raise the level of programming to abstractions closer to the application domain. Object-oriented languages already support this principle to some degree, but provide only weak support for software composition (one cannot program applications in terms of reusable objects only, but must always program new objects that realize the composition).

 

We propose to develop a composition language, called Piccola (for "Pi Calculus-based Composition Language") whose formal semantics is specified in terms of the pi calculus [37]. This work is a continuation of research started in the NFS project "Composing Active Objects" (NFS 2100-040610.94). The principle features of the composition language will include:

 

- *Active Objects:* objects are mobile processes that provide services based on an encapsulated state [61]
- *Components:* components are abstractions over the object space [61]; components may be fine-grained, when used to build individual objects, or coarse-grained, when used to build compositions of objects; compositional operators are abstractions used to "glue" other components together
- *Meta-Objects:* meta-objects are active objects that control the creation, instantiation and composition of other objects [65]
- *High-level syntax:* the specification of an application as a composition of components must be highly readable and compact; it is therefore important to be able to assign a high-level syntax when defining a component framework (as is possible in languages like Smalltalk) 
###Meta-modelling Environment
We want to create a (visual) modelling environment for creating and composing abstractions that are at and above the class level. This environment includes the possibility to model the semantics of these abstractions through (meta-level) interpretation. We view this way of modelling semantics as a useful and more intuitive form of modelling than the pi calculus mapping mentioned above: the formal (pi) semantics is needed to provide a precise computational model for the specification of the language features, whereas the modelling environment will be more suitable for component framework designers and application developers who need to think in terms of domain concepts rather than computational primitives.

 

It is our long-term goal to implement the meta-modelling techniques and the modelling environment on top of piccola, thus integrating the two forms of abstraction building. In the current project we will use a Self/Kansas based implementation of the visual composition environment as a testbed [44], and we will port our work to C- [Infrastructure for Software Component Frameworks ]().

 

We intend to apply this modelling environment to turn so-called design-patterns [15] into software abstractions. These, in turn, we want to apply to the construction of component frameworks (for example, for coordination).

 

Given that the principle of meta-modelling will be available in a system, we especially aim to use it for building frameworks. We will start with realizing general useful parts (abstractions), for example, general abstractions for mapping general components onto framework specific components, general cooperation abstractions and the corresponding type matching mechanisms, and generally used design-patterns. From the start, but increasingly in the project we will move to applying these abstractions, and building framework specific abstractions and frameworks. Important questions to answer will be: Are framework construction, adaptation and use indeed simplified in this way? How can we provide the user with an integrated view of the different levels of modelling, e.g, component-modelling and composition-modelling? How do design-patterns manifested in composition abstractions, combine? Can we thus see design-patterns as high-level components?

 
##Compositional Proof System


Formal specification and verification of software systems is highly labour-intensive and is not generally carried out except in application domains where software correctness is a critical issue. In open systems with evolving requirements proving global correctness seems a hopeless task. But if systems are composed of highly reusable and robust components, it may be worth proving individual components correct if this will allow us to reason about the correctness of their compositions.

 

This part of the research project will investigate known techniques for proving program correctness and will seek to extend them to open, concurrent systems.

 

At first the emphasis will be on sequential object oriented languages and more specifically on the specification and verification of classes in isolation. Formal foundations for design methods will be investigated.

 

A next step will be to extend our research to concurrent object oriented environments. This will include research on the effect of concurrency on inheritance.

 

In the long term, we hope to be able to reason about the composition specified using Piccola. Jones' pobl specification language [28] provides a hint that this may be possible, since pobl can be used to reason about concurrent object-based programs, and the formal semantics of pobl is based on the pi calculus. What remains is to see if these techniques can be carried over to the object/component model of Piccola.

 
##Coordination Framework


Piccola will be an experimental language, whose design will have to be validated through its application to concrete problems. This means that it must be used both to specify component frameworks as well as specific applications composed from the framework components. The domain of coordination in open systems is a natural one.

 

Most approaches to coordination thus far have been language-based in the sense that researchers have proposed various specialized coordination languages, each with its own language primitives and model of coordinating computational agents. Instead we propose to develop an open framework of coordination mechanisms, and to validate Piccola by using it to specify and implement the framework.

 

The basic synchronization primitives of Piccola will be based on message passing (as in the pi calculus): objects may synchronize concurrent requests by atomically claiming and releasing resources represented as messages (see, for example [39]). The coordination framework will provide higher-level coordination abstractions that will make it easier and more convenient to specify complex interactions correctly.

 

This work will consist in:

 

- Surveying approaches to coordination in existing coordination languages, object-based concurrent languages and intelligent multi-agent systems, and identifying and evaluating coordination abstractions in these approaches.
- Experimental design and implementation of a coordination framework based on the results of the survey. The framework components will be formally specified with Piccola, wherever possible, and with Pict (or directly with the pi calculus) otherwise. Specific components will be implemented to interface to distributed objects using CORBA [47]. 
##Work plan

##First year


- Coordination Language: formal specification of Piccola; implementation of first prototype by, e.g., translation to Pict
- Modelling Environment: meta-modelling of design patterns, porting of the modelling environment to C- [Infrastructure for Software Component Frameworks ]().
- Proof Systems: investigation of compositional proof systems for sequential objects
- Coordination Framework: survey and evaluation of coordination models; executable specification of framework with Piccola or Pict 
###Second year


- Coordination Language: refinement of Piccola design based on experimental use; design and implementation of native compiler/interpreter
- Modelling Environment: meta-modelling of coordination framework
- Proof Systems: exploration of extensions to concurrent objects
- Coordination Framework: experimental use of coordination framework for specific applications 

##What is the importance of the proposed work?


Software systems are increasingly required to be flexible and open, but traditional programming languages and software development techniques are ill-equipped to deal with such requirements. This project proposes to develop basic tools and techniques to support the construction of flexible systems from software components. The main difference between the proposed work and newly available commercial systems is that a formal approach is taken to modelling objects and components in terms of (i) a computational model of objects as processes, and (ii) meta-level interpretation. We expect, therefore, to achieve a rigorous basis for reasoning about software composition in open systems, which is not possible now with the ad hoc models of commercial systems.

 
#International Collaboration

##Within which international programs or organisations will this project be carried out?

At present none.

A consortium of institutions carrying out research in coordination languages, including the University of Berne, is preparing a proposal for an ESPRIT Working Group called COORDINA. If this initiative is successful, it will provide opportunities for exchange of results in this project with other researchers in Europe working in closely related areas.

 
##In which countries do the principle partners in this project reside?

There are no formal research partners in this project.

The proposers have regular, informal exchanges concerning the topic of this proposal with researchers in Great Britain (Benjamin Pierce, Cliff Jones, Jeff Kramer and David Walker), the Netherlands (Mehmet Aksit) and Italy (Paolo Ciancarini).
