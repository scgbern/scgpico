---
Title: DSL Auto-completion
---

The project consists in building a web service that provides autocompletion for a DSL (domain specific language) implemented in the context of an ongoing research project.
The DSL is implemented in smalltalk and its purpose is to enable developers to express constraints on their application. 
Here is a simple example of how such a constrain might look like: 

```var Test: Component with package= "ACAC-Test"
var Syntax: Component wit package= "ACAC-Syntax-*"
Syntax cannot DependOn($Test)
```
 
This text is analyzed by a parser and later transformed into an object model that expresses the same information in a more convenient way.
This final data structure is then exposed to multiple consumers. 
Each consumer declares an accepted grammar, which describes the structure of the rules that it is able to process. 

The idea is to build an autocompletion algorithm that offers hints based on the grammar specification of the existing consumer modules. 

For example, if a consumer declares that it supports rules having the following properties: 

-  rule type '.. cannot ..'
-  subject of type 'Component' 
-  one or more predicates of type 'DependOn' (with argument of type 'Component')

An the user entered the following input:
 
```var Test: Component with package= "ACAC-Test"
var Syntax: Component wit package= "ACAC-Syntax-*"
Syntax
```

Then we should be able to propose 'cannot' as next keyword. 
And if the user got further and entered the following text: 

```Component $Test = Package(ACAC-Test)
Component $Syntax = Package(ACAC-Syntax-*)
Syntax cannot DependOn()
```

We should suggest him all the variables of type Component (i.e.: $Test, $Syntax) as argument of DependOn. 

Additional features which could eventually be implemented: 

-  syntax highlighting 
-  error highlighting (i.e.: undefined variables, uses wrongly spelled keywords, etc..)

Both of the last features require little effort are not crucial to the success of the project.   


Technical Challenges:

-  Learn the Smalltalk programming language 
-  Gain confidence with parsing and FSM (Finite-state machine)
-  Implement a usable and friendly web front-end

Related resources: 

-  Similar solution: ![http://naturalmash.com/videos](http://naturalmash.com/videos) // ![http://naturalmash.com/about](http://naturalmash.com/about) // ![http://www.youtube.com/watch?v=SMAwIFL45GA](http://www.youtube.com/watch?v=SMAwIFL45GA)
-  Autocompletion JS libraries: ![http://yuku-t.com/jquery-textcomplete/](http://yuku-t.com/jquery-textcomplete/) // ![http://codemirror.net/](http://codemirror.net/)


People:

-  [Kenneth Radunz](%base_url%/wiki/alumni/KennethRadunz)
-  [Andrea Caracciolo](%base_url%/staff/Caracciolo)
