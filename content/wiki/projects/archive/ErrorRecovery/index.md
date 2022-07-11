---
Title: PEG Error Recovery
---

Goal of this project is to provide a toolset for *PetitParser* to be able to exploit the benefits of permissive parsing. We try to develop the necessary algorithms and formalisms to establish error recovery and error repairing in a parser combinator adhering to the PEG formalism.

This can be used in areas such as code completion, suggestions and highlighting (e.g. while the user is typing code that is not complete yet) or in general all applications that have to deal with syntactically incorrect code.

We try to provide approaches able to either automatically establish error recovery for *PetitParser* (implicitly, without modifications of the formalism) or allow the programmer to explicitly specify the behavior in cases of errors.

##Presentations
http://scg.unibe.ch/download/softwarecomposition/PEGS-Error-Recovery.pdf


#Contact
For details on this project contact [Michael Rüfenacht](%base_url%/wiki/alumni/MichaelRuefenacht) or [Jan Kurš](%base_url%/staff/kursjan)
