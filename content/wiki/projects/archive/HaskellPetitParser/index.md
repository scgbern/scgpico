---
Title: Parsing F# with Petit Parser
---
#Parsing F# with Petit Parser
The goal of this project is to implement F# grammar in Petit Parser.
F# is an indentation sensitive language.
It means that the spaces and tabulators matters and might change syntax of a program.
Petit Parser is a Parsing Expression Grammar based framework which was recently extended with support for indentation sensitive languages.

In this work a student:

-  is supposed to implement F# grammar in Petit Parser, 
-  parse significant amount of F# sources as a validation of an implementation and 
-  measure the performance of indentation sensitive features.

The project is currently assigned as a bachelors project.

Contact: [Jan Kurš](%base_url%/staff/kursjan) or [Milan Kubicek](%base_url%/wiki/alumni/MilanKubicek)

**Slides**

[Project introduction](%assets_url%/download/softwarecomposition/2015-01-06-Kubicek-FSharpIntro.pdf)

[Project results](https://www.dropbox.com/s/9uq5jof7ziouldq/2015.09.29_Parsing_FSharp_BSC_Presentation_2_Milan_Kubicek.pdf?dl=0)

**Code**

PetitParser F# grammar and parser on [SmallTalk Hub](http://smalltalkhub.com/#!/~MilanKubicek/FSharpGrammar)

F# code to get the untyped AST nodes textually encoded from the F# open edition compiler on [GitHub](http://github.com/mkubicek/FSharpAST)
