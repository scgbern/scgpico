---
Title: How do the class comments differ in common programming languages?
---
#How do the class comments differ in common programming languages?
#Introduction
A Class comment contains different types of information about the class like the intent of the class, responsibilities of the class, a summary of the class, etc.
Different programming languages follow a different standard for the class comments and embed different types of information like in Java, a class comment provides an overview of the high-level design of a program i.e purpose of the class, what does the class do whereas, in Pharo, a class comment provides more detailed knowledge of the class, for example, which API, instance variables the class has.
In addition to different information types, the organization of the information in the comment and style of writing comment also varies in different programming languages.
We aim to identify such differences in class comments of different programming languages.


#Problem
Identifying a certain kind of information in the comment is a challenging task due to lack of fixed structure of the comment and various standards followed in each programming language community. Identifying this information is critical to keep track of code comments evolution, their co-evolution with the source code (is the code consistent with the source code or is out of date? How much of the system is comment? What information it has different from source code?)

#Related work
There are various studies performed in classifying the information in different programming languages. Yoann [Padi09a] classified code comments from Linux, free BSD written in C.  Luca et.al [Pasc17a] classified Java code comments, Daniela et. Al [Stei13b] additionally classified Java, c\+\+ code comments.
Jingyi [Zhan18a] classified Python code comments. We have performed a similar study in Pharo code comments. However, we have not come across any study which compare the information types in these programming languages.

NB: Search references in SCG bib.


#Aim
Our aim is to perform a comparative study, designing tools capable to extract class comments from different programming languages, based on language conceptual models.

#Steps

-  Extract active projects of common (or most popular) programming languages according to Github.
-  Identify and extract class comments from all classes for each language.
-  Identify the information types from the class comments.
-  Construct a taxonomy of information types.
-  Extract style-related guidelines specific to each programming language
-  Compare identified information types across different languages.

#Further Material
[Class comment Analysis](/download/softwarecomposition/2019-11-26-Ivan-classCommentAnalysis.pdf)

#Contact
[Pooja Rani](%base_url%/staff/Pooja-Rani)
