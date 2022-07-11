---
Title: File Library for Squeak
---

Squeak (and many other Smalltalk dialects) have a minimal file library only. Navigating trough directories, iterating over file listings, extracting or setting file attributes is very cumbersome and mostly requires to deal with String objects. This is not something a beginner or somebody that wants to use Smalltalk for scripting would expect.

The goal of this Bachelor Project is to implement a powerful file-library, with the following requirements:

- proper objects, no string handling
- can map to existing directories or be virtual
- attributes can be read and written
- security properties can be read and written
- platform independent model (Windows, Linux, OS X)
- efficient iteration over the model
- creating, copying, moving, deleting
- virtually handled zip/gzip/... files

This project includes the following tasks:

- implement a powerful and extensible object model for files and directories
- enhance the squeak primitives to handle features not currently provided by the VM
- write tests to ensure the functionality on all supported platforms

Contact: [Lukas Renggli](http://www.lukas-renggli.ch)
