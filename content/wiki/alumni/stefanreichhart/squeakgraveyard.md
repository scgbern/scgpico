---
Title: Squeak Graveyard
---
#Squeak Graveyard

| | | | | | |
|---|---|---|---|---|---|
|  <b> class</b>  |  <b>method category</b>  |  <b>method and all deep senders</b>  |  <b>refers to/used by</b>  | <b>TODO?</b> |
| Object | testing | isWebBrowser (and all deep-senders) | Scamper | remove or put to class extension \*Scamper |
| Object | creation | <all> | Morphs | put all to class extension \*Morphic |
| Object class | documentation | <all> | - | this is documentation not behavior -> remove / create a documentation/finder tool |
| UndefinedObject | 3ds parser support | from3DS: | - | remove |
| ClassDescription | private | linesOfCode | - | purpose ?  remove or replace by parseTree statements (more accurate) |
| Class | testing | officialClass, isSystemDefined | Player | remove |
| Color | instance creation | colorFrom: | many | use oop |
| Number | private | readRemainderOf:from:base:withSign: | Number itself | ??? | 
| Object | viewer | assureUniClass | EToyys | move to EToys | 
...
...
...

"B3D" - what is this (good for) ?

-  Number > asB3DVector3
-  SketchMorph > canBeEnlargedWithB3D

From class >> #readFromOldFormat:

-  look at the first line

StandardScriptingSystem

-  a class with and instance side and only class variables

OldSocket / OldSimpleClientSocket
Smalltalk allClasses select: [ :each | each name last = $2 ]
Morphs: AnimationMagicMorph, PasteUpMroph, SyntaxMorph

- name:superclassName:traitComposition:classTraitComposition:category:istVarNames:classVarNames:poolDictionaryNames:classInstVarNames:type:comment:commentStamp:

Date / DateAndTime / Timestamp

-  whats the difference between DateAndTime and Timestamp anyway?

BalloonEngine

-  #copyLoop
-  #copyLoopFaster
-  #copyLoopFastest

FileSystem

-  we really need a new one ! (more abstract, clean, easier)
-  accessing files in not threadsafe
-  accessing the source of a method is not threadsafe
-  FileDirectory sucks
-  DirectoryEntry sucks more
-  asking for the size or existence of a file is way easier in unix shell
-  FileDirectory >> #fileExists: -> Drugs ?!? walks over parent directory

CrLfStream

-  Why a subclass of StandardFileStream?!?

Etoys

-  methods are spread over the whole image/kernel
-  refactor this stuff into one package or ....
-  Ugly, crappy piece of shit. Even AK admits that. In fact it is so embarrassing to him that he does not show it on demos.
-  Replace with Scratch or Etoys 2.

Morphics

-  keyboard support (left, right, ... change focus without mouse)
-  PasteUpMorph
-  Morph
-  CommentMorph
-  BookMorph
-  any Morph in General

Text

-  html -> \*Network, ...
-  asUrl &mdash;> \*Network, ...
-  asUrlRelativeTo: &mdash;> \*Network, ...

String

-  comparison polllution &mdash;> cleanup (intelligent names \+ comments)
-  asHtml, asIRCLowerCase, asUrl, unHtml, encodeForHTTP, ...... &mdash;> \*Network, \*IRC, ...
-  duplication: #findBetweenSubStrs:, #subStrings:, #findTokens:, #splitAtCommas,  

Character

-  asIRCLowercase, ....... &mdash;> \*Nertwork, \*IRC
-  isTraditionalDomestic &mdash;> \*Locals", "\*Languages, ...

HTTPSocket

-  doesn't work (ie. POST does not respect proxy settings)
-  huge methods
-  copy pasted all over the way, triplicated code ...
-  data was slow -> WTF?!?

CompiledMethod

-  huge methods that are not understandable (shift here, mask there)

Blocks

-  #fixTemps
-  no cheap blocks (clean)
-  no closures

Compiler

-  two different, not nested block

ClosureCompiler

-  slows down normal blocks too

Decompiler

-  decompiling does not work if receiver of #ifTrue:ifFalse: is cascade

WeakArrays

-  don't scale
-  freeze image for long time

GarbageCollector

-  old generation collector is not incremental
-  tuned for memory sizes of ten years ago

Integer

-  Integer readFromString: 'VB rocks'

Url

-  #urlClassForScheme:, how about asking the subclasses like SM does?
-  Url absoluteFromText: 'http://smallwiki.unibe.ch/' and Url absoluteFromText: 'https://smallwiki.unibe.ch/' return objects that have a very different protocol

Streams

-  all those #become: when the something bad happens
-  why are they all subclasses and not wrapped (e.g. StandardFileStream, HtmlFileStream, CrLfStream)

SocketStream

-  reading form a closed stream returns nil
-  in 3.8 is a subclass of PositionableStream but not positionable

Object

-  abstract, like every other class

ReferenceStream

-  can not deal with changing index of instance variables

SmartReferenceStream

-  has a limit for big chunks but of course does not warn

SystemWindow

-  Look at the description of system window.
-  Count the number of ivars 
-  Notice how many responsibilities it has.
-  [http://bugs.impara.de/view.php?id=5124](http://bugs.impara.de/view.php?id=5124)

Number

-  isOrAreStringWith - hä?, not part of Number-Behavior
-  stringForReadout, same
-  isInfinite, couldnt we represent this as an Object instead of a string ?
-  detentBy: atMultiplesOf: snap:
-  there are a lot of conversion methods that don't belong to the Behavior of Number -> class extensions

Random

-  "dices", nice but not core behavior of Random

MethodFinder

-  initialize, couldnt be more ugly

MorphicModel

-  ScrollBar >> #delete -> WFT?!?
-  select class pane horizontal scrollbar in browser and remove it

Behavior >> #formalHeaderPartsFor:

-  <strong>WFT?!?</strong>

ClassBuilder

-  central class
-  bugs
-  hairy code
-  no tests
-  #name:inEnvironment:subclassOf:type:instanceVariableNames:classVariableNames:poolDictionaries:category:unsafe:
-  #isReallyObsolete: aClassDescription
```
	"Returns whether the argument class is \*really\* obsolete. (Due to a bug, the method isObsolete
	isObsolete does not always return the right answer"
```


- replaceFrom:to:with:startingAt:

-  copy and pasted all over the system, needs to be a trait
-  needs to be able to handle overlappy sections correctly (memmove gives this abstraction)

SharedQueue

-  needs no further explanation

tk code

-  SmalltalkImage >> calcEndianness -> 'Ted is confused'. Srsly?
-  From >> # hackBits:

...
...
...
