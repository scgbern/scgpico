---
Title: Identify various kinds of information from class comments automatically
---

#Introduction:
Code comments play an important role in software understanding and maintenance tasks.
Programming languages follow  different conventions to write class comments.
For example, in Java, a class comment provides a high-level overview of a class i.e. summary of the class, what does the class do whereas, in Pharo, a class comment provides more detailed knowledge of the class, for example, which important public methods, or the instance variables the class has in addition to the high-level overview.

 
#Problem:
As developers do not follow strict conventions in writing comments, they embed various kinds of information they deem important for others.
For example, warnings about a class, reference to online web sources, or code snippet to show the usage of the class, are some common information types found in comments.
Identifying these information types in comments is a challenging task due to lack of fixed structure of the comment and various standards followed in each programming language community. Therefore, we are interested in developing tools to support analysis of comments and eventually improve their quality.

#Related work:
There are various studies performed in classifying the information in different programming languages. [Yoann et. al](https://ieeexplore.ieee.org/abstract/document/5070533) classified code comments from Linux, free BSD written in C.  [Pascarella et.al](https://ieeexplore.ieee.org/abstract/document/7962372) classified Java code comments. [Steidl et. al](https://ieeexplore.ieee.org/abstract/document/6613836) additionally classified Java, C or C\+\+ code comments. [Zhang et. al](https://link.springer.com/chapter/10.1007/978-3-030-02934-0_4) classified Python code comments. However, all previous works have proposed language-specific approaches to classify code comments and none of them analyzed class comments. 
With the increasing usage of multi-language projects, it is important to build language-independent approaches. In this direction, we have developed a machine-learning based language-independent approach to identify various types of information from Java, Python, and Pharo class comments automatically. However, the approach currently does not work well on specific types of information and needs improvement. 

#Aim:
In continuation to our previous work, we aim to improve the existing machine-learning based approach by expanding the dataset.

#Steps:

-  Extract popular and active projects of Java, and Python programming languages from GitHub.
-  Identify and extract class comments from all classes.
-  Prepare a dataset of sample class comments.  
-  Identify the information types from the sample class comments according to the given taxonomy.
-  If required, we can expand the ground truth dataset using other online services.
-  Improve the existing machine-learning based pipeline with the expanded ground truth dataset.
-  Present your results. 

#Further Material
[Class comment Analysis](http://scg.unibe.ch/download/softwarecomposition/2019-11-26-Ivan-classCommentAnalysis.pdf)

#Contact
[Pooja Rani](%base_url%/staff/Pooja-Rani)
