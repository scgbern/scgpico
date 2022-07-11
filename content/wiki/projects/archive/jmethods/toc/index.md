---
Title: TOC
---

#TOC
##Problem / Einleitung

-  Situation in Squeak (und allgemein?)
-  was wir gerne machen würden aber nicht können
	-  Tools
		-  Browser/IDE
		-  Tracing

	-  Behavioral Reflection
	-  Programmiersprache programmieren / skripten
	-  MOP
	-  jeder Studi muss bei 0 anfangen (nehme ich BS oder MethodWrapper oder ...)
	-  nur abdecken, was auch in der Lösung vorkommt


##Lösung
Was wir genere hätten (abstrakt), siehe auch Paper

##Implementation
mit Details, Transformationen und so

-  Annotations, #keys, #isSourceVisible, #evaluateAtCompiletime
-  AST convenience -> wie aufsplitten JMethods/AST

##Fallstudien

-  Toy Beispiele, hauptsächlich "Compilerplugins" (programmierbare Programmiersprache)
-  Adi
	-  Instrumentation / MOP
	-  Vergleich zu Compilerhack (ev. später)
	-  Codeeffizenz, Vergleich zu Gepetto (ev. später)

-  Michael
	-  Instrumentation / MOP
	-  Vergleich zu Interpretation
	-  Vergleich zu andere Tools (LOC!!!!!)

-  Nik
	-  anderes Beispiel als Instrumentation / MOP


##Vergleiche

-  ByteSurgeon
-  MethodWrappers

##Herausforderungen

-  Decompiler
-  Debugger
-  Tool, das Annotationen bewahrt
-  Ganze Image so

##Was zu tun ist

-  Squeak Tools, Browserintegration
-  vergleich oben?

##Conclusion

##Related Work

-  siehe auch Paper
-  Was davon in Situationsbeschrieb?

##Fragen:

-  Wieviel nehmen wir vom Paper rein?
-  Fallstudien, was kommt da noch bzgl Tracing, Scoping, MOP
-  Vergleiche zu MR/BS in eigenes Kapitel oder Experimente
