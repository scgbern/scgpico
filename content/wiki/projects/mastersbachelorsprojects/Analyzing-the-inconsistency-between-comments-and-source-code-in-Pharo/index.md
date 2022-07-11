---
Title: Analyzing the inconsistency between comments and source code in Pharo
---

#Introduction
In Pharo, as in many other programming languages, method/class comments represent a useful source of information to understand the responsibilities of a given class.

#Problem
However, these comments tend to be often incomplete or inconsistent with the source code. Due to software evolution, class descriptions get out of sync with the source code.

#Aim
The aim of the project is to analyze code and comments of methods/classes in Pharo to generate class descriptions in natural language and study the inconsistency between source code and its comments.

#State of the art
Comments are written in natural language. In recent research, the techniques to analyze the comments, are based on noun phrase analysis, dependency analysis, and semantic analysis. All of them could be used to extract significant information out of comments. 

#Steps

-  Identification of entities and subsequent separation of each sentence present in comments in a way the context of the entities is being preserved.
-  Study of various dependency types present among words to get context information more accurately.
-  Extraction of various information from method bodies, such as method name, parameters, field variables, the purpose of a method, return type etc. In addition, the comments have to be verified against the retrieved data in order to improve the quality of the whole process.
-  Creation of a comment template, based on the ad hoc method and class stereotypes for Pharo.

#Contact
[Pooja Rani](%base_url%/staff/Pooja-Rani)
