---
Title: 'Compiling Java to Smalltalk Bytecode: The Tooling'
---
#Compiling Java to Smalltalk Bytecode: The Tooling
The idea of compiling Java source code to Smalltalk bytecode comes from a compiler construction course. The tools for building compilers in Java (and other languages) hardly care about the development experience of a compiler developer. While sometimes we are forced to use a certain toolset, for teaching we can choose a technology that fits the use case best.

The goal of this project is to take a trivial piece of Java code (because Java is popular) and see how development tools can support the compiler development. The compilation target is the Smalltalk VM because Pharo runs of Smalltalk and Pharo has already some amazing features that can support a compiler development process.

Contact: [Manuel Leuenberger](%base_url%/staff/ManuelLeuenberger), [Yuriy Tymchuk](%base_url%/staff/YuriyTymchuk)

![http://forum.world.st/attachment/4785685/0/IRInspector.png](http://forum.world.st/attachment/4785685/0/IRInspector.png)
An inspector that shows side-by-side IR commands and Source code (and has IR to SC mapping)

![http://gtoolkit.org/pictures/debugger.png](http://gtoolkit.org/pictures/debugger.png)
A dedicated debugger for a parsing framework that allows a developer to easily identify parsing-specific issues such as: on which production a bug occurred 
