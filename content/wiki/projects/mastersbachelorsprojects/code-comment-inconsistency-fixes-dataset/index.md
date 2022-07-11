---
Title: Code-comment inconsistency fixes dataset
---

#Project description

Source code comments are one of the most important kinds of software documentation used by programmers in their work, but often comments are treated with less care compared to source code, even when they form part of the software (e.g., official API documentation). As a result, code and comments often diverge and comments become obsolete and misleading for the developers. Keeping code and comments up to date is still mostly a manual task performed by developers.

We are interested in developing tools that would reduce and automate the effort in keeping the comments synchronized with the source code. In this project we would work on a technique to suggest comment changes to a developer that is modifying the source code.
We will specifically focus on construct an informative message about the code-comment inconsistency.

#Desired outcome

Our goal is to analyze most common code-comment inconsistency fix patterns and practices, and collect a set of templates of comment changes.

#Technical details

In this project we will primarily target Java as a programming language and focus on method level doc comments. Other programming languages with large public code bases, such as Python, can also be considered.

The project will have three main phases:

-  collect the data on inconsistency fixes: prom publicly available data sets and corpora, from a selection of open source repositories, etc.
-  extract, study and classify fix practices and patterns (how long does it take for the comment to be fixed? what kind of comment parts are fixed most often? which changes in the code trigger which changes in the comments?)
-  construct a set of templates that can be customized into informative messages to developers

