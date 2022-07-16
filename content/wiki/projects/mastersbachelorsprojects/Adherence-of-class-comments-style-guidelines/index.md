---
Title: Adherence of class comments to the commenting style guidelines
---
#Adherence of class comments to the commenting style guidelines
#Introduction
Coding style guidelines provide various conventions to write code or comments in a particular style. For example,  according to Java Oracle style guidelines, a class comment should provide high-level overview such as one-line summary, author information written with @author annotation. However, how often developers follow these commenting guidelines in their class comments, is not explored. Additionally, these guidelines differ across organizations, projects, or programming languages.
A recent study [[Rani20a](https://arxiv.org/abs/2005.11583)] in Pharo explored the commenting guidelines for class comment.
They discovered  that the class comment guidelines suggest to provide more detailed knowledge of the class, for example, intent of the class, important  APIs, and instance variables the class has.
They also found that Pharo developers follow commenting guidelines while writing class comments.Whether developers in other languages (Java, or Python) have the same behaviour or not, requires further analysis.

#Potential RQs.

-  What are the commenting guidelines (conventions) described in popular style guidelines?
-  To what extent developer class comments follow these commenting guidelines?
-  To what extent existing style checkers or linters support checking commenting guidelines?

NB: The project is an extension to the [previous-project](/wiki/projects/mastersbachelorsprojects/How-class-comments-differ-in-common-programming-languages), and the initial four steps mentioned in the previous project are already accomplished. 

#Steps

-  Identify the class commenting guidelines related to class comments from popular style guidelines (Oracle style guidelines, PEP257).
-  Build a taxonomy of the guidelines, and compare them across. 
-  Assess the relative importance of the guidelines. 
-  Assess the identified guidelines on the selected projects and see if their class comments follow the guidelines or not.
-  Explore the tool support (style checkers or linters such as Checkstyle, Pydocstyle) for the identified guidelines.

#Further Material

-  [Introduction to the topic](/download/softwarecomposition/2020-11-10-Abukar-AdherenceClassCommentsStyleGuidelines.pdf)
-  [Progress](/download/softwarecomposition/2021-05-04-Abukar-AdherenceClassCommentsStyleGuidelines.pdf)

#Contact

-  [Pooja Rani](%base_url%/staff/Pooja-Rani)
-  Assigned to [Suada Abukar](%base_url%/wiki/alumni/SuadaAbukar)
