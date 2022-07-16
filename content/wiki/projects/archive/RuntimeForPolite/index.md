---
Title: Runtime Support For Polite Smalltalk
---
#Runtime Support For Polite Smalltalk
Polite is a programming language experiment developed at the University of Bern which aims to bring programming languages closer to natural languages. A program written in Polite looks very close to natural language, while still being formal and completely unambiguous. 

There is a parser for Polite in an older version of Pharo. However the tool support is greately improved in the latest versions of Pharo and it would be great to have the project run in this the latest version.

The aim of this project is to port the old version into the new Pharo and create basic tooling support for running Polite Smalltalk in the newest Pharo.

The runtime support should be realized by translating Polite into the normal Smalltalk and executing the normal Smalltalk using standard infrastructure.

##Challenges

-  How to translate Polite Smalltalk into the Smalltalk

##What can you expect to learn

-  Using standard pipeline parser -> AST -> visitor -> output
-  Smalltalk
-  Basics of runtime systems


##Further Reading

-  Brief overview of Polite - [/research/Polite](/research/Polite)
-  Smalltalk syntax on a postcard - [http://goo.gl/38zIu6](http://goo.gl/38zIu6)

Contact: [Mircea F. Lungu](%base_url%/staff/mircea) or [Jan Kurš](%base_url%/staff/kursjan)
