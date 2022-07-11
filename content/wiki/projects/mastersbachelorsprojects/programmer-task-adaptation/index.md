---
Title: Real time classification of, and adaptation to programmer tasks in IDEs
---

#This project is intended for MSc students
<br><p>
#Introduction
Most developers trust in one way or another complex IDE's to compile and build their code.
Recent IDE's provide not only a plethora of refactoring and UI support, they also increasingly try to assist developers proactively through quick fixes by predicting simple developer actions.

#Problem
However, these quick fixes and auto-completions frequently consider very narrow scopes and thus provide only limited low level support, e.g., the setting of default values according to project configurations, or the insertion of data based on templates.
Moreover, they are rarely tied to security.

#State of the art
There exist some tools that enable developers with security-related quick fixes. Nevertheless, they merely cover basic support, e.g., assistance in the selection of safe parameters, or insertion of secure communication API templates.

#Task
The goal is first to define common developer tasks related to security.
Based on these tasks required actions have to be derived and observed in real time with the help of an IDE plug-in.
Considering the developer's actions, the plug-in should be able to predict the high-level intentions and assist accordingly.

The focus of this project lies in the collection of typical security-related tasks and actions, [AST traversal](https://en.wikipedia.org/wiki/Abstract_syntax_tree), and finally, the tool evaluation.
<br><p><br></p>

#Guiding research questions

-  What are everyday developer tasks related to security?
-  How and to what extent can an IDE provide proactive developer support?
-  What are the security gains using the tool?
<br><p><br></p>

#Contact 
[Pascal Gadient PhD](%base_url%/staff/PascalGadient)
