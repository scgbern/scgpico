---
Title: CodeFoo
---
#CodeFoo
This page describes some of the most useful additions for Smalltalk, you can find more of them in the <code>CodeFooDevelopment</code> bundle on [How to access the SCG visualworks store](%base_url%/wiki/howtos/howtoaccessscgstore).


---

##Symbol &raquo; value: anObject

The simplest little extension that could possibly make a big difference. The extension allows to use symbols as unary blocks, for example you may replace

```
    coll do: \[ :each | each unaryMessage ]
```

with

```
    coll do: #unaryMessage
```

There is a package <code>SymbolValue</code> both on [How to access the SCG visualworks store](%base_url%/wiki/howtos/howtoaccessscgstore) as well as public store. For more information, please refer to [How valueable is a Symbol?](http://www.cincomsmalltalk.com/userblogs/travis/blogView?entry=3264534180) by Travis Griggs.

## \* &raquo; asSortBlock

Answer a sort block based on the receiver, implemented as

<div style="background: beige; border: 1px solid peru;">

```
  Symbol >> <b>asSortBlock</b>
    ^\[ :<!-- -->a :<!-- -->b | (a perform: self) <= (b perform: self) ]
```

```
 BlockClosure >> <b>asSortBlock</b>
    self numArgs = 1 ifTrue: \[ ^\[ :<!-- -->a :<!-- -->b | (self value: a) <= (self value: b) ] ].
    self numArgs = 2 ifTrue: \[ ^self ].
    self error: 'Not a sort block.' 
```

</div>

Please note that, to improve execution speed, CodeFoo's actual implementation does some magic to generate an unbound block rather than a full block bound the receiver.

## BlockClosure &raquo; \*

Other useful extensions of blocks includes


-  <code>assert</code>
-  <code>cull: arguments</code>
-  <code>haltIfTrue</code>
-  <code>millisecondsToRun</code>
-  <code>profile</code>


---

##Character &raquo; isSpace

Answer whether the receiver is a space.

## CharacterArray &raquo; \*

Useful extensions of strings includes


-  <code>asCapitalized</code>
-  <code>asPlural</code>
-  <code>lastWord</code>
-  <code>lines</code>
-  <code>linesDo: aBlock</code>
-  <code>piecesCutWhereCamelCase</code>
-  <code>trimQuotes </code>
-  <code>trimSeparators </code>
-  <code>withIndefiniteArticle </code>

in particular those dealing with pre- and suffices are very useful


-  <code>endsWith: aString</code>
-  <code>removeSuffix: aString </code>
-  <code>removePrefix: aString </code>
-  <code>replaceSuffix: aString with: newSuffix </code>
-  <code>startsWith: aString </code>


---

##Collection &raquo; transitiveClosure: unaryBlock 

Answer the transitive closure of the receiver, that is, all elements in the receiver plus any element reachable using the unary block. For example

```
    (Array with: Object) transitiveClosure: \[ :each | each subclasses ]
```

returns the same as

```
    Object withAllSubclasses
```

Implemented as follows

<div style="background: beige; border: 1px solid peru;">

```
  Collection >> <b>transitiveClosure:</b> unaryBlock
    ^self species withAll: (self asSet <b>transitiveClosure:</b> unaryBlock)
```

```
  Set >> <b>transitiveClosure:</b> unaryBlock
    | closure candidates |
    closure := self species new.
    candidates := self copy.
    \[ candidates isEmpty ] whileFalse: \[
      | element |
      element := closure add: candidates removeAny.
      (unaryBlock value: element) asCollectionDo: \[ :each |
        closure find: each ifAbsent: \[ candidates add: each ] ]].
    ^closure.
```

</div>

Please not that the term closure in "transitive closure" refers to the mathematics meaning of [transitive closure (see Wikipedia)](http://en.wikipedia.org/wiki/Transitive_closure) rather than to computer science terminology, this is very confusing and a better naming for the method is welcome.

##Set &raquo; removeAny

Implemented as

<div style="background: beige; border: 1px solid peru;">

```
  Set >> <b>removeAny</b>
    ^self remove: self any
```

</div>

##\* &raquo; asCollectionDo: aBlock

General purpose implementation of <code>#do:</code>, implemented as

<div style="background: beige; border: 1px solid peru;">

```
  UndefinedObject >> <b>asCollectionDo:</b> aBlock
    ^self
```

```
  Object >> <b>asCollectionDo:</b> aBlock
    aBlock value: self
```

```
  Collection >> <b>asCollectionDo:</b> aBlock
    self do: aBlock
```

```
  CharacterArray >> <b>asCollectionDo:</b> aBlock
    aBlock value: self
```

</div>

Please note, we assume that strings are to be treated as objects rather than as collection.

##\* &raquo; asCollection

Implemented analog to <code>#asCollectionDo:</code> as

<div style="background: beige; border: 1px solid peru;">

```
  UndefinedObject >> <b>asCollection</b>
    ^#()
```

```
  Object >> <b>asCollection</b>
    ^Array with: self
```

```
  Collection >> <b>asCollection</b>
    ^self
```

```
  CharacterArray >> <b>asCollection</b>
    ^Array with: self
```

</div>

Please note, we assume that strings are to be treated as objects rather than as collection.

##Collection &raquo; \*

Other useful extensions of collection include set operations,


-  <code>cartesianProduct: aCollection</code>
-  <code>difference: aCollection</code>
-  <code>intersection: aCollection </code>
-  <code>union: aCollection </code>
-  <code> aCollection </code>, same as <code>#difference:</code>

mathematical operations, such as


-  <code>average</code>
-  <code>average: aBlock</code>
-  <code>detectHighest: sortBlock</code>
-  <code>detectLowest: sortBlock</code>
-  <code>detectMax: aBlock</code>
-  <code>detectMin: aBlock</code>
-  <code>deviation</code>
-  <code>maxValue: aBlock</code>
-  <code>minValue: aBlock</code>
-  <code>normalized</code>
-  <code>sum</code>
-  <code>sum: aBlock</code>

and some special enumerations, such as 


-  <code>collectUnion: aBlock</code>
-  <code>count: aBlock</code>
-  <code>countNot: aBlock</code>
-  <code>cross: aCollection do: binaryBlock</code>

##SequencableCollection &raquo; \*

For lists, there are more useful enumerations, such as


-  <code>affect: aBlock</code>
-  <code>crossDo: binaryBlock</code>
-  <code>pairsDo: binaryBlock </code>
-  <code>triangleDiagonalDo: binaryBlock </code>
-  <code>triangleDo: binaryBlock </code>
-  <code>with: aCollection collect: binaryBlock </code>

as well as other useful extensions, such as:


-  <code>evenElements</code>
-  <code>findFirst: aBlock ifAbsent: exceptionBlock</code>
-  <code>findLast: aBlock ifAbsent: exceptionBlock</code>
-  <code>indicesOf: anElement</code>
-  <code>oddElements</code>
-  <code>reverseSort: sortBlock</code>
-  <code>shuffle</code>
-  <code>sortReverse: sortBlock</code>, same as above

as well as more literal accessors, such as


-  <code>second</code>
-  <code>third</code>

and smart implementations of <code>#copyFrom:to:</code> that understand negative, as well as, out of range indices


-  <code>sliceFrom: start to: end</code>
-  <code>sliceFrom: start</code>
-  <code>sliceTo: end</code>

## Bag &raquo; \*

And finally, there are some nice extensions for bags, such as


-  <code>associations</code>
-  <code>maxOccurrences</code>
-  <code>mostOccurring</code>
-  <code>sortedCounts</code>


---

##SequencableCollection &raquo; sliceFrom: start to: end

Answer a copy of the receiver, starting from the element at start index up to and including the element at end index. Other than <code>#copyFrom:to:</code>, this method does never raise a <code>SubscriptOutOfBoundsError</code>. Also, negative indices may be used to count indices from the collection's end rather than start.

The method is implemented as follows

<div style="background: beige; border: 1px solid peru;">

```
  SequeancableCollection >> <b>sliceFrom:</b> s <b>to:</b> e
    | start end |
    start := 1 max: (s positive ifTrue: \[s] ifFalse: \[self size + s + 1]).
    end := self size min: (e positive ifTrue: \[e] ifFalse: \[self size + e]).
    ((start > end) or: \[end <= 0]) ifTrue: \[^self copyEmpty: 0].
    ^self copyFrom: start to: end
```

</div>

For convenience, we provide <code>#sliceFrom:</code> and <code>#sliceTo:</code> as well.

---

## Filename &raquo; \*

There are some nice accessors and enumerations for filenames, either recursive or not


-  <code>allFiles</code>
-  <code>allFilesDo: aBlock</code>
-  <code>files</code>
-  <code>filesDo: aBlock</code>
