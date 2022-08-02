---
Title: Comparison of commenting conventions covered by style guidelines and tools
---
#Comparison of commenting conventions covered by style guidelines and tools
#Introduction
Code comments are written in natural language and their syntax is neither imposed by a programming language's grammar nor checked by its compiler. Therefore, writing consistent comments across projects is a major concern. To motivate developers to write consistent and readable comments, various communities provide coding style guidelines, including, amongst others, naming conventions, formatting conventions, and commenting conventions.

#Problem
 What kinds of commenting conventions these style guidelines provide, is not explored. For example, “what information a class comment should contain” Is described differently in different programming language style guidelines. Oracle style guideline for Java mentions that class comments should contain summary, author description Whereas Python style guideline PEP257 mentions that class docstring should list its public methods and instance variables in addition to the summary. 
Similarly, the PHP style guide provides tag @internal to limit the audience of the documentation whereas the Oracle style guideline and the Python style guidelines do not mention any such concept. 
Collecting these commonalities and differences of comment conventions amongst popular style guidelines, we formulate first research questions.

To help developers in following these style guidelines while writing the comments, various automated style checkers (linters) exist, for example, Checkstyle, Pylint, PyDocStyle. However, which commenting conventions do these style checkers support in the form of supported rules, is another dimension to explore. We formulate another research question to explore this area.

#Research Questions

-  Which aspects of commenting conventions (syntax, semantics, structure) are covered in popular official coding style guidelines?
-  Which of the above commenting conventions are supported by existing style checkers?

#Aim
Compare the commenting conventions mentioned in the style guidelines and checked by style checkers.

#Steps

-  Gather popular style guidelines for well-known programming languages.
-  Extract guidelines related to code comments.
-  Prepare a taxonomy of comment conventions.
-  Compare these comment conventions across style guidelines.
-  Gather popular style checkers for the selected programming languages. 
-  Identify the rules available in style checkers to support comment conventions. 
-  Present the insights on which aspects of comments are asked in style guidelines and not covered by style checkers and vice versa. 

##Note
The project can be extended to a thesis project.

##Further Material

-  [Introduction to the topic](%base_url%/download/softwarecomposition/2021-03-30-Dooley-StyleCheckerSupport.pdf)
-  [Results](%base_url%/download/softwarecomposition/2021-06-29-Dooley-StyleCheckerSupport.pdf)
-  [Thesis](%base_url%/archive/projects/Dool21a.pdf) 

#Contact
[Pooja Rani](%base_url%/staff/Pooja-Rani)

#Assigned to
[Michael Dooley](%base_url%/wiki/alumni/MichaelDooley)
