---
Title: Writing a simple Java Profiler based on Komorium 
---
#Writing a simple Java Profiler based on Komorium 
Profilers enable us to perform dynamic analysis of programs. We are interested in how programs behave at runtime. The runtime analysis of OO systems reveals interesting information and helps us to combine domain knowledge with the software entities such as packages, classes and methods. 
We are interested in abstracting traces of behaviour of a system and model it to reason about the concepts of a system, its architecture. 

There are many Java profiling tools. Many profilers are based on JVMTI or JVMPI. However it is difficult to obtain an efficient pluggable profiler that yields information in a form that is useful for analysis. 

The Komorium provides a simple but flexible API to write custom profiling agents in pure Java. It transforms the JVM bytecode so that each thread in the system periodically activates the user-defined profiling agent, providing a snapshot of the calling stack. 
We are interested in obtaining information about object instances and how they are communicating. We are also interested in the argument information and state information. This project requires you to implement a profiler agent tool that extracts this information and produce a format that is readable in MOOSE by TraceScraper. 

The goal of this project is an easy to use tracer tool that produces tracer output that can be processed by the MOOSE and TraceCrawler tools for Feature Analysis research work. 

Implementation in Java.
