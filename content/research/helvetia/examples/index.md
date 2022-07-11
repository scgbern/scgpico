---
Title: Helvetia Examples
---

This page lists a collection of languages, language changes and language extensions that have been implemented in H<small>ELVETIA</small> together with a small example demonstrating its use.

#Roman Numbers

A simple language extension that adds roman number literals to the host language. A detailed description of the implementation can be found [here](%base_url%/research/helvetia/examples/roman-numbers).

```self assert: VII = III + IV.
```

#Grammar Definition

This language is used to specify grammars for [PEG parsers](http://en.wikipedia.org/wiki/Parsing_expression_grammar) using an [EBNF](http://en.wikipedia.org/wiki/Extended_BackusâNaur_Form) like syntax. The possibility to use EBNF productions within the code of the host language raises the conciseness of grammars definitions considerably.

```digit = "0" | "1" | ... | "9" ;
number = [ "-" ] digit { digit } [ "." digit { digit } ] ;
```

#SQL

This language extension allows one to use SQL expressions where an expression in the host language is expected. Furthermore, within the SQL expression host language expressions can be embedded using the @(...) construct.

```findEmail: aString
   "Retrieve the e-mail for the given username aString."

   | rows |
   rows := SELECT email
           FROM users
           WHERE username = @(aString).
   rows isEmpty
      ifTrue: [ self error: 'User not found' ].
   ^ rows first first
```

#Regular Expression

Smalltalk does not provide literal regular expressions, with H<small>ELVETIA</small> this can be changed: 

```'Nena - 99 Luftballons' =~ /.*\d+.*/
```

#SPath Expression

SPath is a query language which provides a convenient way to access, filter and collect data from a graph of objects. It has similar aims and scope as [XPath](http://www.w3.org/TR/xpath), a query language that is designed to query XML data. The following example assigns all the members of the host language collection family which are older than 12 to the host language variable people.

```people := family:members[age > 12]
```

#Quasiquoting and Unquoting

Smalltalk does not provide [quasiquoting](http://en.wikipedia.org/wiki/Metaprogramming) facilities, something that is commonly used in languages like Scheme and Lisp for meta-programming. The implementation of this language extension is described [here](%base_url%/research/helvetia/languageboxes). The following code can be used to inline the calculation of the power function. For example, the expression `@(self raise: `x to: -4) generates the code 1 / (x \* x \* x \* x).

```raise: aNode to: anInteger
   anInteger = 0
      ifTrue: [ ^ ``1 ].
   anInteger < 0
      ifTrue: [ ^ ``(1 / `,(self raise: aNode to: anInteger abs)) ].
   ^ ``(`,(self raise: aNode to: anInteger abs - 1) * `,aNode)
```

#Brainfuck

[Brainfuck](http://en.wikipedia.org/wiki/Brainfuck) is a minimalistic programming language simulating a Turing machine. Being able to have a debugger at hand makes it considerably easier to understand the code examples:

``` This program multiplies two single-digit numbers and displays the result 
 correctly if it too has only one digit
 	
 ,>,>++++++++[<------<------>>-]
 <<[>[>+>+<<-]>>[<<+>>-]<<<-]
 >>>++++++[<++++++++>-]<.>
```

#Positional Arguments

While most programming languages use positional arguments, Smalltalk uses keyword arguments that interleave the argument values of a method invocation. This can be a problem when interfacing with other programming languages such as C. This language extension adds positional arguments to Smalltalk.

``` aCanvas glTexCoord2f(1.0, 0.0).
 aCanvas glVertex3f(-0.2, 0.2, -100.0).
```

#Automaton

A simple language to define [automaton](http://en.wikipedia.org/wiki/Automata_theory) or finite-state machines. The following example defines an automata that accepts input of the form c(a|d)\+r:

``` init : c -> more
 more : a -> more
        d -> more
        r -> end
 end :
```

#Tuple Space

A [tuple space](http://en.wikipedia.org/wiki/Tuple_space) is a form of a shared memory or blackboard architecture. While Smalltalk always passes arguments by reference, this language extension makes it possible to pass arguments as a pointer to the reference by prepending the argument with a question-mark. This allows functions like read: to bind values to local variables. The following example implements the fibonacci numbers using a tuple space:

``` fibonacci: anInteger
    | result |
    (space read: {'fib'. anInteger. ?result} ifNone: [ nil ]) isNil
       ifFalse: [ ^ result ].
    anInteger < 2 ifTrue: [
       space write: { 'fib'. anInteger. 1 }.
       ^ 1 ].
    space write: {'fib'. anInteger. (self fibonacci: anInteger - 1) 
       + (self fibonacci: anInteger - 2)}.
    space read: {'fib'. anInteger. ?result}.
    ^ result
```

#Mondrian

[Mondrian](http://moose.unibe.ch/tools/mondrian) is a graph based visualization framework that provides a declarative Smalltalk API for users to specify new visualizations and compose existing ones. This language extension makes it possible to define new shapes using a CSS like syntax:

``` shape {
     cols: #grow, #fill;
     rows: #grow, #fill;
 }
 label {
     position: 1 , 1; 
     text: [ :each | each name ];
     borderColor: #black;
     borderWidth: 1;
 }
 rectangle { 
     position: 1 , 2;
     colspan: 2;
     borderColor: #black;
     borderWidth: 1;
     width: 200;
     height: 100;
 }
```

#Transactional Memory

[Transactional Memory](http://en.wikipedia.org/wiki/Transactional_memory) is an example for changing the execution semantics without changing the syntax of the host language.  All state changes in the atomic block below are deferred to the end of the transaction so that conflicts can be detected.

``` tree := BTree new.
 [ tree at: #a put: 1 ] atomic.
```

#Object Relationships

A common challenge with complex object models is to implement relationships between objects. With this language extension the implementation of the write accessor next: of a double linked list is simple, the code to update the opposite relationship is generated automatically:

``` Link>>next: aLink
   <opposite: #prev>
   next := aLink
```

#String Interpolation

String interpolation can be error prone and expensive when interpreted at run time. The following examples demonstrate two flavors of compile time optimized [printf](http://en.wikipedia.org/wiki/Printf)-like language extension:

``` '<1s> owns <2p> pair<3?s:>' << ('Hans' , 1 , false)
```

``` 'You Smalltalk has {Smalltalk allClasses size} classes'
```

#Assignments and Swapping

The following example adds the <\==> construct to the language to swap the contents of two variables. Furthermore the <\== allows one to assign multiple values in one expression:

``` | a b |
 { a. b } <== { 'hello'. 'world' }     " assigns 'hello' to a, and 'world' to b "
 a <==> b.                             " swaps the values a and b "
```

#Schematic Tables

[Schematic Tables](http://subtextual.org/OOPSLA07.pdf) provide a convenient way to handle arbitrarily complex conditionals. The following example defines a function from the booleans a, b, and c to the number x. The table below is read colum by colum: if a is true, then the result is 1; if a is false and b is true or a is false and c is true, then the result is 2, etc.

```x := {| a | = true  | = false | = false | = false |}
     {| b | --      | = true  | --      | = false |}
     {| c | --      | --      | = true  | = false |}
     {|   | 1       | 2       | 2       | 3       |}.
```

#Message Pipes

The classic Smalltalk syntax does allow to chain unary and binary messages without using parentheses like so:

```1 negated isZero.
1 + 2 + 3 + 4.
```

However, with keyword messages parentheses are required:

```(((1 to: 10)
    select: [ :each | each odd ])
    collect: [ :each | each * each ])
    inject: 0 into: [ :sum :each | sum + each ]
```

A pipe or chain operator :> as proposed by [Vassili Bykov](http://blog.3plus4.org/2007/08/30/message-chains/) makes the result of the preceding expression the receiver of the following message send. So that the above expression can be rewritten without parentheses:

```(1 to: 10)
    :> select: [ :each | each odd ]
    :> collect: [ :each | each * each ]
    :> inject: 0 into: [ :sum :each | sum + each ]
```

#Asynchronous Messages

[Croquet Smalltalk](http://www.opencroquet.org/) provides an implementation of asynchronous messages as a patch into the standard compiler and a small amount of support code. The following code shows a traffic light that changes from red, to orange, and to green before it disappears again: 

```morph := CircleMorph new.
morph color: Color red.
(morph future) openInWorld.
(morph future: 1 second) color: Color orange.
(morph future: 2 seconds) color: Color green.
(morph future: 3 seconds) delete.
```

The code fragment immediately returns as the messages openInWorld, color: and delete are sent asynchronously as defined by the future keyword. An optional argument allows one to schedule the message after a given duration in the future.
