---
Title: For Example JUnit
---

After [reporting a bug and some discussion with JUnit's maintainers](https://sourceforge.net/tracker/?func=detail&atid=115278&aid=1703148&group_id=15278), David Saff showed interest in test-examples for JUnit. Hence, the idea of this project is to write a proof-of-concept prototype that extends JUnit 4.0 with an example-based dependency mechanism. 

Background: in his PhD, Markus Gälli analysed the code coverage of tests and found that they do not each cover different parts of the code, instead he discovered that the coverages form a partial order. Thus he concluded that tests could be refactored into a hierarchy of tests, where many tests use the return value of one other test as input. He calls the tests in such a hierarchy examples, ie the examples <i>are</i> the tests. The avantage of such a testing framework would be, that it is aware of dependencies between tests and could thus, in case of an error, much more precisely point to the source.

What you should know


-  Programming skills
-  Have fun with tests

What you will learn


-  Design patterns
-  Java annotations
-  Reflection 
-  Eclipse plugin
-  User interface design

<s>Like the project? Please contact Adrian Kuhn.</s> 

Project no longer available!
