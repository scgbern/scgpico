---
Title: Code critiques in the Pharo debugger
---

*Code critiques* are the result of analysis tools that notify programmers of 
code smells or refactoring possibilities, among others. One such 
implementation exists in the Pharo IDE, where critiques are displayed in class 
and method views. However, in Pharo, there are other ways to modify the source 
code of a program. In particular, one can use a debugger or object inspector 
to directly alter the source code as the program runs. As a result, some 
programmers tend to do most of their implementation work from within these 
tools instead of the static code editor. Adding code critiques to the debugger 
opens up new possibilities. Since there is run-time information is available, 
code critiques could take advantage of this. An example where this can be 
useful is string concatenation. In Pharo, when concatenating a String with 
another object, for example, 'a', b, b needs to be a String (or more 
precisely, an indexable object). However, at compile time, we can not know 
what the type of b is. When debugging a program however, we know the type of 
`b`. A code critique could take advantage of this and warn a programmer that 
the right-hand side is not a String. Taking this a step further, we could also 
associate a "quick-fix" with a rule that transforms the source code, in this 
example from 'a', b to 'a', b asString.

This project involves the following main parts:


-  Make the code critiques available in the Pharo debugger
-  Use run-time information to design rules
-  Implement a quick-fix mechanism that allows transformations as show above

This project focuses on the infrastructure rather than individual rules. While 
sample rules will be required for demonstration and testing, the goal is not 
to come up with a complete set of good rules. The proposal is open-ended on 
purpose and only a rough outline of what can be done with code critiques when 
brought to the debugger.


This project is intended as a seminar or bachelor thesis project.

#Contact
[Claudio Corrodi](%base_url%/staff/Corrodi)
