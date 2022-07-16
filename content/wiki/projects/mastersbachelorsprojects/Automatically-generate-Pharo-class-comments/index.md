---
Title:  Generate Pharo class comments automatically
---
# Generate Pharo class comments automatically
#Introduction
Developers refer to code documentation frequently when they need to understand source code to implement a new feature, or to maintain the existing code. In Pharo, class comments are a primary source of the code documentation. To guide developers to write class comments, Pharo provides a default class comment template. The template suggests various types of information. Rani et al. [[Rani20a](https://arxiv.org/abs/2005.11583)] found that developers frequently mention these template inspired information type compared to other information types found in the comments. However, there are often cases when developers write incomplete comments or do not write class comments due to time and effort constraints. We suggest that automatically generating the template inspired information types from the code can help developers in reducing the efforts. Moreno et al. [[More13b](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6613830)] suggested a technique to generate the summaries for Java class automatically but adapting their approach to Pharo requires heavy adaption as the template proposed by them is different from the Pharo template.

#Aim
In this project, we aim to explore the techniques to automatically generate the template inspired information and summarize the generated information to present in the class comment.

#Steps 

-  Identify the approaches and heuristic to generate the required information such as the intent of the class, responsibilities of the class, or important methods from the code.
-  Implement a tool in Pharo to fill the template automatically with the generated information.
-  Compare the proposed approach with Moreno et al. approach.
-  Evaluate the generated summaries with developers.

NB: Search the references in Scg bib

#Further Material

-  [Introduction to the topic](/download/softwarecomposition/2020-11-17-Hess-GeneratePharoClassComments.pdf)
-  [Results](/download/softwarecomposition/2021-04-27-Hess-GeneratePharoClassComments.pdf)
-  [Thesis](/archive/projects/Hess21a.pdf)


#Contact

-  [Pooja Rani](%base_url%/staff/Pooja-Rani)
-  [Lino Hess](%base_url%/wiki/alumni/LinoHess)
