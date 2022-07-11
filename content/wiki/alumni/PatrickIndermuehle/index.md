---
Title: Patrick Indermühle
---

I am a bachelor student currently working on a bachelor's thesis about Modular exceptions under the supervision of Oscar Nierstrasz.

The aim of the Modular exceptions thesis is to create ways to attach exception handling to functions and methods without having to manually change the code. The goal is to keep the exception handling outside the method so as to not clutter the code. This will keep the code readable and stable. This is accomplished by using wrapper methods and meta-links among other solutions. The implementation of these wrappers and meta-links will be handled by the ModularExceptions class that is currently being developed. 

Exception handling is usually done through try-catch blocks. These however have multiple disadvantages. They clutter the code, mixing the functionality of the method with exception handling instead of the exception handling being in a separate place. They are also not modular, meaning it is hard to reuse them without adjusting them to the method or without adjusting the method to accommodate them.

A prototype is currently in development using Pharo Smalltalk. If time permits it a prototype in Java will be developed.
