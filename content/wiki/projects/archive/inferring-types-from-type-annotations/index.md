---
Title: Inferring types from type annotations
---
#Inferring types from type annotations
Analyzing code in dynamically-typed languages is hampered by the lack of static type information. To reduce this problem, developers use type annotations. 

The common way to do this in Smalltalk is to embed the expected type name into method argument name. For example, if the expected type of method argument is String, the name of the argument should be 'aString'. These annotations are used by developers, for program comprehension, and by IDE tools, like code completion.

A previous study discovered that this is not always the case. Instead of 'aString' developers sometimes use `aName', or `aTitle'. While a human may conclude that an argument named `aName' expects a String, an IDE tool cannot.

The aim of the project is to explore ways to improve the algorithm of type guessing based on method argument names.

#Contact
[Nevena Milojković](%base_url%/staff/Milojkovic)
