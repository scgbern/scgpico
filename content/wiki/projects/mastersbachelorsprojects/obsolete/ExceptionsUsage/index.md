---
Title: Exceptions Usage
---

# About exceptions

An exception is an event, which occurs during the execution of a program, that disrupts the normal flow of the program's instructions[1]. Exceptions are usually handled by switching the execution to a specific subroutine known as an exception handler [2].

In Java there is a distinction between two types of exceptions: checked exceptions and unchecked exceptions. Methods throwing checked exceptions must explicitly declare them in the signature or catch them using a try-catch block. Unchecked exceptions can be freely thrown; they do not have to be caught or declared in the thrown section of a method signature. 

The Java programming language also provide a set of useful exceptions for the most common situations, like NullPointerException or OutOfMemoryError. Apart from theses predefined exceptions, developers are free to create their own custom exceptions. This is done by creating a subclass of Exception. Custom exceptions can be used to signal contextual problems and/or provide more information about the cause of an error.

# Goal

The goal of this project is to analyse the usage of custom exceptions within Java programs and possible determine some usage patterns. We will look at how many custom exceptions do developers create and whether or not they use them within their applications. For example, a system might declare a large number of custom exceptions but only use try-catch blocks catching predefined exceptions. 

# Benefits/Requirements/Challenges

The project will be done using [Moose](http://www.moosetechnology.org%20) and [Pangea](http://www.moosetechnology.org/docs/pangea%20). Moose is an extensive platform for software and data analysis; Pangea adds on top of Moose a repository providing a common and easy-to-setup dataset for empirical studies. Moose and Pangea are written in [Pharo](http://www.pharo-project.org/%20), an open-source Smalltalk-inspired environment.

This project will give you the chance to learn more about exceptions and see how Moose can be used to analyse software systems. You will also get to work with Pharo, a language quite different from Java and C#.

You should apply for this project if you have good programming skills in any object-oriented language. Knowing anything about Pharo or Moose is not required.

Available as a bachelor/seminar project. (Can be extended to a master project)

# References


-  [1] [Exceptions](http://docs.oracle.com/javase/tutorial/essential/exceptions/index.html)
-  [2] [Exception handling](http://en.wikipedia.org/wiki/Exception_handling)


Contact: [Andrei ChiÈ](%base_url%/staff/andreichis)
