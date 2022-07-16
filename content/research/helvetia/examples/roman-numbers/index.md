---
Title: Roman Numbers
---
#Roman Numbers
Imagine the requirement of supporting roman numbers within a programming language. We are looking for an approach that keeps the complete syntax of the host language and avoids to add any boilerplate code. We would like to be able to write expressions like:

```
self assert: VII = III + IV.
```

In the following example we assume that there is a converter method #romanToArabic in the class String answering the decimal representation of a roman number or nil, if invalid. 

We add the following transformation rule to the system:

```
RomanDSL class>>transformation
    <transform>

    ^ DSLTreePattern new 
        expression: '`var'; 
        action: [ :context | 
            | arabic | 
            arabic := context node name romanToArabic. 
            arabic notNil 
                ifTrue: [ context node swapWith: arabic lift ] ]
```

Line by line explanation:


-  <transform> tells the compiler that this is a transformation rule to be considered when compiling any code in the system.
-  DSLTreePatter defines the scope `var of an action to be performed on the parse tree.
-  The action closure calls #romanToArabic to transform the roman number to an Integer object.
-  If the matched variable node is actually a roman number, replace the node with the corresponding arabic number.
-  #lift turns the Integer into a LiteralNode that can be inserted into the parse tree.

## String interpolation

Adding string interpolation to Smalltalk is a matter of adding a simple method that transforms string literals to a more complex AST after the initial parsing:

```
StringInterpolationDSL class>>stringInterpolation
    <transform>

    ^ DSLTreePattern new
        verification: [ :node | node value isString and: [ node value isSymbol not ] ];
        expression: '`#literal' do: [ :context | 
            context node swapWith: (self interpolate: context node value) ];
        yourself
```

The transformation itself is defined in a separate helper method:

```
StringInterpolationDSL class>>interpolate: aString
    | stream parts string |
    stream := aString readStream.
    parts := OrderedCollection new.
    [ stream atEnd ] whileFalse: [
        string := stream upTo: ${.
        string isEmpty 
            ifFalse: [ parts add: string lift ].
        string := stream upTo: $}.
        string isEmpty
            ifFalse: [ parts add: (``(`,(Parser parseExpression: string) asString) ] ].
    ^ parts fold: [ :a :b | ``(`,a , `,b) ]
```

This method makes use of [quasiquoting](http://repository.readscheme.org/ftp/papers/pepm99/bawden.pdf), a mechanism that is particularly well known in Scheme and other functional languages. Quasiquoting is merely syntactic sugar to make it easier to build parse tree nodes. For example ``(1 \+ a) represents the parse tree of 1 \+ a, as opposed to the expression itself. This language extension was built using H<small>ELVETIA</small> as well.

The test case below demonstrates the new interpolation functionality:

```
StringInterpolationTest>>testArithmetic
    self assert: 'Result: {1 + 2}' = 'Result: 3'.
    self assert: '10! = {10 factorial}' = '10! = 3628800'
```
