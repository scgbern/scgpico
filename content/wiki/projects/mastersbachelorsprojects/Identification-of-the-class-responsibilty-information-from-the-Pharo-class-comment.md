---
Title: Identification of the class responsibility information from the Pharo class comments
---
#Identification of the class responsibility information from the Pharo class comments
#Introduction
Comments in Pharo are expressed in a very different way compared to other programming languages. Writing documentation in other programming languages annotations and pseudo-English is used mostly omitting the subject of the sentence. Whereas in Pharo, the text is written freely in the comment.

#Problem
Identifying a certain kind of information in the comment is a challenging task due to the lack of a fixed structure of the comment. Although the default template is present in Pharo, very few comments adhere to the template. So information is scattered all over the comment.

#Example
A class named "MouseClickState" describe its responsibility with a sentence: "I manage the distinction between clicks, double clicks, and drag operations."

In Pharo class-comments, a sentence is composed as we express in English using SVO. In most of the cases, a class is referred like first person entity “I” and then all the information present in the comment is referred in a similar way. There are lots of information available in class comments like what responsibilities a class have, what a class knows, whom it collaborates with, and code snippet as an example to tell the implementation details.

#Aim
Our aim is to perform a pilot study to identify the patterns for the responsibility of a class from the comment and extract it. This is helpful in particular to highlight the important information from the comment and find inconsistent information in the comment. 

#Steps

-  Finding the patterns to identify the responsibility of a class from the comment like which words/verbs describe the responsibility mostly.
-  Study of NL(natural language) methods to extract various information from the text.
-  Extraction of subjects (nouns), actions (verbs), and their relations using dependency parsing.
-  Constructing NL(natural language) heuristics to identify the sentence that describe the responsibility of the class.
-  Evaluating the approach on the comment dataset.

#Contact
[Pooja Rani](%base_url%/staff/Pooja-Rani)
