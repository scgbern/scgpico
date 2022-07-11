---
Title: Developing a user interface for a CLI application to classify comments
---

#Introduction
Developers write various types of information in code comments such as summary of the class, authors of the class, or description of its methods and variables in comments. These information types help developers in understanding and modifying the code. However, identifying these information types is not a trivial task as they are written in natural language form without a strict syntax. 

In our previous work, we developed a command-line based pipeline in Java to identify various information types from class comments [1]. 
The pipeline preprocesses the comments stored in database, process them, and prepares a machine-learning based classification model. The figure below presents an overview of the pipeline.


|<img style="text-align:center" src="http://scg.unibe.ch/download/prani/cl-neon-pipeline.jpg"/>|
|---|---

#Task
Your task is to develop a prototype tool (browser extension for a GitHub repository or a GitHub application [2][3]) for this command-line based pipeline so that a developer can use it to classify comments of their repository.

#Requirements

-  Java (to understand the existing pipeline)
-  Abstract Syntax Tree (to extract comments)
-  HTML/CSS/JavaScript (to develop web extension)
-  Choice for the technology can be further discussed

#References
[1] [How to identify class comment types? A multi-language approach for class comment classification](http://scg.unibe.ch/archive/papers/Rani21d.pdf)<br>
[2] [Building GitHub Apps](https://docs.github.com/en/developers/apps/building-github-apps)<br>
[3] [Example App](https://github.com/rafaelkallis/ticket-tagger)

#Contact
[Pooja Rani](%base_url%/staff/Pooja-Rani)
