---
Title: DSL in Scala
---

A [DSL](http://en.wikipedia.org/wiki/Domain-specific_language) (Domain Specific Language) is a small language with a clearly defined grammar and a very readable syntax. 
There are two types of DSL: external and internal. 
Internal DSLs ride on a host language, so an internal DSL's syntax is both influenced and restricted by the host language. External DSLs can be built from the ground up but doing so requires mental muscle, as well as a very good parser.

The goal of this project is to build an internal DSL for Dicto using the Scala programming language. 
Dicto is a lightweight language for specifying architectural rules. 
Here is a small example: 

```View: Package with name="org.app.view"
Model: Package with name="org.app.model"
Controller: Package with name="org.app.model"
Tests: Class with parentClass="junit.framework.TestCase"

Controller must depend-on Model
Model cannot depend-on View, Controller   
only Tests can access Model
Tests, Model can only depend-on Controller
```

The end result should be a fully functioning Scala program that accepts the above presented statements and transforms them in an adequate object model. 


References: 

-  [http://www.scalatest.org/user_guide/using_matchers](http://www.scalatest.org/user_guide/using_matchers)
-  [http://scg.unibe.ch/dicto/](http://scg.unibe.ch/dicto/)

Contact person: [Andrea Caracciolo](%base_url%/staff/Caracciolo)
