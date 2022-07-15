---
Title: Exploring the Call Stack
---

# Contextual user interfaces in debuggers

Answering questions about the runtime behavior of software is a prerequisite for maintaining and evolving software systems. Most of the time this is done by using the debugger, as it allows developers to interact with a running system and inspect its state. This makes the debugger an essential tool in any programming environment. However, standard generic debuggers are not well suited for debugging contextual problems.  

One limitation of generic debuggers is that they always display the same type of information, which might not be relevant to the problem at hand. This can be addressed by having contextual domain-specific user interfaces.

# What about the stack?

One way to obtain domain-specific user interfaces is by creating new types of graphical widgets that display new types of information. Another alternative consists in leveraging the existing widgets and displaying information in different ways. One widget, present in most debuggers, is the call stack. 

The call stack keeps track of the current active  subroutines (e.g. methods) of a computer program. Debuggers show the call stack and allow developers to inspect stack frames. However, exploring the call stack is not a trivial activity. It can be very large and can contain a lot of uninteresting information. 

# Goal

The goal of this project is do develop a mechanism for exploring and visualising the call stack. The solution should allow developers to filter, trim, highlight, etc. the stack in order to find relevant information. Thus, instead of having a generic view of the stack, developers will be able to look at the stack in different ways, depending on their contextual problems.

# Benefits/Requirements/Challenges

This project will give you the chance to learn more about user interfaces and debugging. The project will be done in [Pharo](http://www.pharo-project.org/%20), an open-source Smalltalk-inspired environment. You will see a language quite different from Java and C#. The work will be done in the context of the ["Moldable Debugger"](http://scg.unibe.ch/research/moldabledebugger)[2][3], a framework for creating domain-specific debuggers. 

You should apply for this project if you have good programming skills in any object-oriented language. Knowing anything about Pharo is not required.

In this form the project is available as a bachelor project. (Can be extended to a master project.)

# References


-  [1] [Call stack](http://en.wikipedia.org/wiki/Call_stack%20)
-  [2] [Towards a Moldable Debugger](http://rmod.lille.inria.fr/archives/dyla13/dyla13_4_Towards_a_Moldable_Debugger.pdf)
-  [3] [The "Moldable Debugger" framework](http://scg.unibe.ch/research/moldabledebugger)
-  [4] [A first look at the Pharo debugger](http://chisvasileandrei.wordpress.com/2013/10/24/a-first-look-at-the-pharo-debugger/)


Contact: [Andrei Chiş](%base_url%/staff/andreichis)

