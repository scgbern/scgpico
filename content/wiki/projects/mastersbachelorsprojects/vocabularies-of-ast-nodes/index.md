---
Title: Source code vocabularies
---

##Project description

Program source code contains numerous natural language cues that aid programmers in tasks of program comprehension. We are interested in extracting natural language information from source code, namely from class, method and variable names. We will work on source code snippets that correspond to abstract syntax tree (AST) representation of source code.

##Desired outcome

Our goal is to come up with a reliable technique to obtain a vocabulary of natural language (NL) words from a set of source code identifiers belonging to an AST node in a given programming language.

##Technical details

In this project we will primarily target Java as a programming language and English as a natural language. Other programming languages with large public code bases, such as Python, can also be considered.

The project will have three main phases:

-  parse source code into its AST representation and extract nodes at different depths
-  extract identifiers of interest
-  extract NL information

We will cover NLP tasks of abbreviation detection and expansion, and synonym matching.
