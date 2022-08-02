---
Title: Enrich Eclipse with Dynamic Analysis
---
#Enrich Eclipse with Dynamic Analysis
Right now, we do not see dynamic information of an application embedded in the source code view in Eclipse. But it would be very valuable to see for instance which kind of objects have been stored in instance variables of a (Java) class. Or we would like to know precisely which methods of which classes have been invoked during a certain run of an application.
Issues to solve in this project are how to gather dynamic data in an efficient manner and how to actually enrich Eclipse with this information to make the environment more useful to developers. Being able to gather dynamic information "live" also opens the door to think about new approaches and ways to navigate source code. Based on data gathered from the running of a software system we are developing, we can possibly emphasize important (static) entities (classes, methods) better to help the developer performing maintenance tasks on a system or enhancing this system with new features. 

This project can build on work already been done, eg. Wiretap, a tool to gather dynamic information of a Java system. This information now needs to be integrated in Eclipse, for Wiretap there is aleady a plugin available for Eclipse ([Wiretap - Feature and Object Flow Analysis for Java](%base_url%/wiki/projects/archive/wiretapfeatureandobjectflowanalysisforjava)).

Contact: [David Roethlisberger](%base_url%/staff/davidroethlisberger)
