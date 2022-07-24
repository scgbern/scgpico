---
Title: Code Coverage
---
#Code Coverage
"Christo" is an open-source tool to dynamically and safely retrieve code-coverage in Squeak. It provides a simple user interface, hiding the complexity of dynamic analysis and offers many powerful extensions compared to 'standard' code coverage tools.


---

#Download / How to get Christo

-  Install by yourself:
	-  Load the package "PackageLoader" from SqueakSource (http://www.squeaksource.com/PackageLoader)
	-  Run "CoverageLoader new loadAll" in a workspace ... This will interactively install Christo and all its dependencies into your image.

-  Download an all-inclusive image (running version, but likely not up-to-date)
	-  All-inclusive [Squeak-Image](http://www.iam.unibe.ch/~reichhar/files) (Testing-xxxx-xx-xx.zip).

-  Public sources on SqueakSource:
	-  "http://www.squeaksource.com/Coverage"


#Demo Stuff

-  A very [Quick-Video-Intro](http://www.iam.unibe.ch/~reichhar/ChristoBasics.mov) to Christo
-  Some example [Screenshots](%base_url%/wiki/alumni/stefanreichhart/codecoverage/screenshots) from "Christo" Browsers and Visualisations ...
-  Statistics, [Case Studies](%base_url%/wiki/alumni/stefanreichhart/codecoverage/casestudies) and more ...


---

#Features of Version 0.1

-  Code Coverage
	-  Flexible kernel
		-  Exchanging analysis technology, default: ByteSurgeon
		-  Collecting any kind of runtime data, for example senders, receivers, contex, arguments, ... default: senders/calls

	-  Technology independence. Currently supported: ByteSurgeon, JMethods/Ast-Interpretation, MethodWrappers, ObjectsAsMethods
	-  Method and sub-method coverage
	-  Dynamic links between tests and sources
	-  System coverage notification events
	-  Persistent live-cache of dynamic data
	-  Image-Safety, unsafe nodes don't get method-wrapped

-  User Interface
	-  Simple and intuitive browsers completely hiding the complexity of dynamic analysis
	-  Coverage-Configurations to quickly change the scopes of coverage
	-  Coloring of nodes, for example classes, methods, sub-method-nodes, ...
	-  1-click coverage
	-  Tightly integrating unit testing, debugging, profiling and coverage
	-  Additional actions to support testing, coverage, ...

-  Partial Ordering of Tests
	-  Browser and Visualization using GraphViz and Mondrian
	-  Graph/Image-Export for GraphViz
	-  Complexity View for debugging purposes
	-  Identification of the least/most abstract test

-  (beta) (Delta) Debugger
	-  Kind of (delta) Debugger to more effectively and efficiently debug tests/sources
	-  Multiple different strategies exists

-  (beta) Code Generation
	-  Test-code generation based on coverage-analysis (templates only)

-  Visualization
	-  Coverage and Partial Ordering of Tests
	-  Various Visualizations to more effectively search for badly covered sources or complex/ abstract tests, ...

-  Seaside
	-  Generation on Seaside-Server pages
	-  Dynamically updating


#Known Bugs of Version 0.1

-  Visualization-Scripts don't work on all nodes -> Dictionary/Graph-Bug
-  AST/JMethods
	-  Coloring of sub-method doesn't work properly
	-  block variables are not annotated

-  Changing Technology
	-  producing empty/nil results
	-  failing tests 

-  MethodWrappers are broken in 3.9
	-  Compilation of Methods

-  Install/Uninstall instrumentation bug
	-  optimization had some very nasty side effects -> wrappers don't work correctly, produce garbage in systemn dictionaries



---

#Plans for future versions:

-  Complete refactoring of the coverage-kernel
	-  Sub-method coverage as standard \+ coloring \+ dyn type information (args, ...)
	-  Smaller, lightweight, get rid of some high level code/abstractions making the analysis slow
	-  Full-tracing techs
	-  Unification of nodes (clean-up)
	-  Un-installation routines (fix and accelerate)
	-  Improve safety, but base don technology, not global
	-  Scoped Coverage
	-  Gepetto 2 and Object Flow !!!

-  User Interface
	-  Adapt to the latest OBs
	-  Better, faster browsers (old OBs are slow!)
	-  Better actions and visualizations (focus)
	-  Even tighter integation into the coding/testing process
	-  More interactivity/agility (browsers, visualizations, debugging, ...)
	-  Enhance the cache with the graph-based dictionary
	-  More transparency

-  Server-Processes
	-  Seaside components, visualizaions
	-  Ansync-Coverage / "Multithreaded" anaylsis (?)

-  Debugging
	-  Enhancing the Delta Debugger, maybe implementing a real Delta Debugger

-  Partial-Ordering
	-  Better graphs, Layouts, ...

-  Code Generation
	-  Real code/test analysis and real code generation

-  Installation
	-  simpler, more stable !!!



---

#References

-  My Master Thesis ;) ...

#Related Tools

-  Smalltalk
	-  http://www.refactory.com/Software/MethodWrappers/CoverageTool.html
	-  [http://st-www.cs.uiuc.edu/users/brant/Applications/WrapperApplications.html](http://st-www.cs.uiuc.edu/users/brant/Applications/WrapperApplications.html)
	-  [http://www.cincomsmalltalk.com/publicRepository/Zork-Analysis.html](http://www.cincomsmalltalk.com/publicRepository/Zork-Analysis.html)

-  Java (Maven)
	-  [http://emma.sourceforge.net/](http://emma.sourceforge.net/)
	-  [http://www.jcoverage.com/](http://www.jcoverage.com/)
	-  [http://www.cenqua.com/clover/](http://www.cenqua.com/clover/)

