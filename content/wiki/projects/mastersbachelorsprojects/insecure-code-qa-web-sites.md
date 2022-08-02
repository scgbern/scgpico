---
Title: Predicting insecure code in answers of Q&A web sites
---
#Predicting insecure code in answers of Q&A web sites
#This project is intended for MSc students
<br><p>
#Introduction
Question and answer websites like Stack Overflow have become very popular as an immediate source for ready to use code snippets about repetitive tasks to the majority of Android developers.

#Problem
Nevertheless, countless contributors do particularly not consider comprehensive security evaluations, which could lead to severe issues, if potential visitors are not aware of this limitation and apply the "instant fix" carelessly in their projects.

#State of the art
Much work has been published on scraping Q&A websites for improving quality of code, even instant quick fixes based on Q&A answers have been proposed and already implemented in some IDE's.
Consequently, researchers investigated the impact of copy & paste code in Android application security, and vice versa, they examined the properties of low quality content on these websites.
However, they mainly relied on simple statistical measures, e.g., textual features, readability metrics, and user's popularity in the community to determine the quality of an answer, which all of them do not reflect accurately properties of (in)secure code.

#Task
The goal is first to specify properties of (in)secure code and its textual descriptions, next to build a comprehensive data model that can estimate the quality for Android code snippets based on the source code itself, and finally the integration of the findings into the existing Security Smell catalogue.

The focus of this project lies on the parsing of web resources including [NLP](https://en.wikipedia.org/wiki/Natural_language_processing) techniques, the creation of a data model, and the exploration and adaptation of state of the art [ML](https://en.wikipedia.org/wiki/Machine_learning) approaches.
<br><p><br></p>

#Guiding research questions

-  How can we improve the quality of the results from previous work?
-  How and to what extent does the tool influence the workflow of developers?
-  What are the security gains using the tool?
<br><p><br></p>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)
