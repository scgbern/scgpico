---
Title: Identify the comment issues pointed out in the code review phase
---
#Identify the comment issues pointed out in the code review phase
#Introduction
Code review is an important practice for software quality assurance. 
It has been widely adopted in both open source and commercial software projects.
One of the benefits of code review is to enforce coding standards to the code.
[[Wen19a](/scgbib?_k=H-4ihFcD&query=Wen19a)] constructed a taxonomy of code changes which triggers changes in comments. They confirmed that 20% of changes in the code trigger comment changes. Another study [[Rani20a](https://arxiv.org/abs/2005.11583)] showed that only 50% of the changes in the class comments are related to code changes. Remaining comment changes are about clarifying details of the class, formatting and adding information. 

#Problem
However, what aspects of comments are captured in the code review phase by reviewers is unexplored. 

#Research questions

-  What type of comment related issues are pointed out in the code review phase?
Are those issues pointed out to match coding standards?
RQ2: How often and how comment related issues are fixed by developers? 
(Whether those issues are fixed by developers to match coding standard, to address a bug or to improve the documentation)

#Steps

-  Explore [Gerrit](https://git.eclipse.org/r/q/status:open+-is:wip,25).
-  Identify the issues related to code comments.
-  Define a taxonomy, focusing on the low-level issues mentioned by reviewers.
-  Gather the timeline when these issues are fixed by developers.
-  Gather the reasons of fixing the issues.

##Note
The project can be extended as a thesis project.

#Contact
[Pooja Rani](%base_url%/staff/Pooja-Rani)
