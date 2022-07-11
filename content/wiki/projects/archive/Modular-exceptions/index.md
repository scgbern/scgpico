---
Title: Modular exceptions
---

Try-catch blocks offer a very localized mechanism for handling exceptions. In practice, many handlers are similar, so having a way to reuse handlers would be convenient. Furthermore, try-catch blocks unnecessarily clutter code when the handlers  are trivial. This project would explore ways to define handlers at the level of a method or even en entire class, thus removing clutter and offering a simple way to reuse handlers.

The goal of the seminar project would be to develop a simple prototype of modular exceptions in [Pharo](http://pharo.org) Smalltalk using the meta-link facility.
Time permitting, the project would also explore ways to resume execution in the case of null exceptions, by replacing at run time the null value by a [Null object](https://en.wikipedia.org/wiki/Null_object_pattern).

Contact: [Oscar Nierstrasz](%base_url%/staff/oscar)
