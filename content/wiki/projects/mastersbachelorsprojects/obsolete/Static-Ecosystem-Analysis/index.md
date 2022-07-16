---
Title: Exploring Dependencies in Java Software Ecosystems
---
#Exploring Dependencies in Java Software Ecosystems
#The Context
Static analysis has been done traditionally on single software systems. However, software systems do not exist on their own, but instead they exist in the larger context of a software ecosystem. Ecosystem analysis is a field that is currently in its early days.

#The Project

In this project you will design and implement techniques that support the analysis of the dependencies between software systems in the broader context of an ecosystem. Your analysis should recover detailed information about the dependencies between projects, their structure, and their evolution. As your sources of information you will use the compiled bytecode of the Java projects and the declared dependencies as can be found in the Maven configuration files. Maven gives you the dependencies, but does not tell you why they are there. You will have to extract that information from the analysis of the individual systems.

Several of the challenges that you will have to tackle in this project are:


-  extracting a dependency graph between all the versions of all the systems in an ecosystem based on the information that is present in the Maven repository
-  building a detailed model of the dependencies between systems by parsing the individual systems and cross-referencing the extracted information
-  building a web-based prototype that allows the exploration of the dependencies between the projects in the ecosystem.

One possible case study for this project can be the Apache software ecosystem.

#Prerequisites
The most important, you must love programming ;) Then, you have the choice of integrating your visualization tool with the existing "Small Project Observatory" infrastructure, case in which you need to be fluent in Smalltalk, or have the willingness to learn it.


[Mircea F. Lungu](%base_url%/staff/mircea): "Contact me to discuss more about this project."
