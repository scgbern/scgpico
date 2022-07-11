---
Title: Implementing memory usage in the Inspector
---

#Description
The inspector is a fundamental tool that allows programmers to explore the state of the instance variables of an object (as depicted below). Each instance variable is an object by itself which can be inspected as well. Sometimes programmers need to understand why an object requires so much memory. If the object has a complex structure of instance variables (very deep, maybe with cycles) to find where the most of the memory required is allocated  can be hard. A useful improvement for the inspector would be to show this information for each variable.
#Tools
In this project we will work in Pharo (a Smalltalk dialect). Currently, Pharo includes a method in the Object class named sizeInMemory which shows the required size in memory which is not recursively, so not very useful for this purpose. But good as a starting point.
#Goal
The goal of this project is to build a recursive version of sizeInMemory method an integrate it into the inspector.

![Inspector](%assets_url%/files/f4/ann9b9etjmgbyh1y187gcwo2wqew5h/inspector.png)
