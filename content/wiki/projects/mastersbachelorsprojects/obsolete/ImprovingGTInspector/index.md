---
Title: Improving the GTInspector
---
#Improving the GTInspector
# Inspecting Objects

Inspecting the state of objects is a common task in software development. There are numerous ways in which this can be done. The simples way is to just print a textual representation in the console. Even if it is a fast and easy approach it has limitations when displaying complex objects. If further provides no way to interact with the represented objects.

A better approach is to use an inspector, a dedicated tool for displaying object state. Such a tool is the GTInspector from the [Moose](http://www.moosetechnology.org%20) platform. Among its many features it allows objects to have multiple graphical representations, as not all objects are create equal. It further provides a simple mechanism for creating new types of views for objects. A detailed description of the inspector can be found at the following links: [1], [2], [3], [4].

# Problem

The GTInspector is based on the [Miller columns](http://en.wikipedia.org/wiki/Miller_columns%20) technique (also seen in Mac OS X Finder) to show connections between objects: it always shows the next selected objects to the right. When inspecting complex structure users can create a long chain of views. The current graphical widget does not make it easy for users to navigate between these long chains of views

# Goal

The goal of this project is to improve the graphical widget used by the GTInspector to make it easy for users to navigate between long chains of views. There are two solutions that we will try:

-  provide a shortcut mechanism for navigating between presentations
-  provide a small preview for each of the available views

# Benefits/Requirements/Challenges

This project will give you the chance to learn about constructing graphical user interfaces and inspectors. The project will be done in [Pharo](http://www.pharo-project.org/%20), an open-source Smalltalk-inspired environment. You will see a language quite different from Java and C#. The GTInspector is written in Glamour an engine for scripting browsers. The work will also require some development in Morphic, the default framework for constructing user interfaces from Pharo. 

You should apply for this project if you have good programming skills in any object-oriented language. Knowing anything about Pharo, inspectors or user interfaces is not required.

Available as a bachelor/seminar project. (Can be extended to a master project.)

# References


-  [1] [Introducing the Glamorous Inspector for Smalltalk](http://www.humane-assessment.com/blog/glamorous-inspector-for-smalltalk/)
-  [2] [The moldable GTInspector deconstructed](http://www.humane-assessment.com/blog/the-moldable-gtinspector-deconstructed/)
-  [3] [Extending the variables shown in GTInspector](http://www.humane-assessment.com/blog/extending-variables-shown-in-gtinspector/) 
-  [4] [Dissecting the GTInspector](http://www.humane-assessment.com/blog/dissecting-the-gtinspector/)
-  [5] [Scripting Browsers with Glamour](/archive/masters/Bung09a.pdf)


Contact: [Andrei Chiş](%base_url%/staff/andreichis)
