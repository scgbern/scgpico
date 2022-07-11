---
Title: Examples
---

Examples for context orientation in Moose/Meta/Fame

[structure setPrivate: false. '<h2>Internal page</h2>' ] 

#Different kinds of Contexts

It seems everyone is speaking about context, but no one has done a proper analysis yet what a context is. We miss a "What is the context in Context Orientation?" paper. I see (at least) these contexts 


-  Thread-related contexts
-  Application context (see Moose model) 
-  UI element context (see Moose model)
-  Environmental context (eg weather)
-  Lexical scope context (ie source code location)

&mdash[Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn)

#Metamodel facility (dynamic variable)

Meta is an implementation of a metamodel facility for Moose. MOF compliant meta-description are attached to classes and stored in a singleton, however different applications might setup the M1-M3 layers with different content. The mist straight forward example is testing, which does destructive changes to all three layers, but still we want to run test while having the application running. To allow for this, the singleton facility may differ based on the execution context. 

```System class>>reference
	| model |
	model := Processor activeProcess environmentAt: System.
	^model ifNil: \[ self default ]
```

```System>>useWhile: aBlock
	| environment backup |
	environment := Processor activeProcess environment.
	backup := environment at: System.
	^\[ environment at: System put: self.
	aBlock value ]
		ensure: \[ environment at: System put: backup ]
```

&mdash[Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn)

#Application context (Moose)

Moose can load multiple models at the same time in the same application. Sometime we need to now "in which model we currently are". To get this information, currently >b>every</b> moose element keeps a pointer to its model. This is a waste of memory (there are millions of elements per model). Nice would be to store the current model as context.

Why dont we do that? The "current model" does not correspond to the current thread, so all context approaches that rely on threaded contexts fail (which are most of them). Also all approaches that rely on "external values" (like weather eg) fail short of modelling this kind of context. 

Moose can analyze multiple model at the same time. Often code needs to access to current model, ie the model of the current case study, which makes the current case study a context. However we have not yet been able to specify this context in a clear way. A first implementation used as current model the current selection in the UI. But this failed in most cases, because as you open different visualizations and inspectors on your date and switch between models, the current selection in the main is often not the current model. The same when executing code from the workspace. 

The solution we use now, is to store in each model element a back pointer to the containing model and to have code, which needs the current model, to navigate to the next available element and ask it for its model. However, this may often lead to code smells which violates the Law of Demeter. Be it either that the code navigates dozens of associations to reach the next available model element, or that the model context is passed through dozens of signature to the location of its use.

However I am not happy with this solution, and would like to find a way of not storing the model in each entity.


-  Execution context does not work when calling code from Workspace or MondrianEasel
-  Maybe GUI context (ie assign to each UI window a context?)

&mdash[Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn)

#Image setup

For Visualworks we use a setup package, its on the version repository and contains code to setup an image from scratch. The package is used by nearly all Moose users, but some of them want a slightly different setup, eg setting a different font or loading some other utility. To allow for this, a different setup method is called based on the current user.

```	| user pragmas pragma |
	user := self userName.
	pragmas := Pragma allNamed: #user: in: self class.
	pragma := pragmas 
		detect: \[ :each |	each arguments first = user ]
		ifNone: \[ nil ].
	 pragma 
		ifNil: \[ self defaultSetup ] 
		ifNotNil: \[ self perform: pragma selector ]
```

&mdash[Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn)

#IDE Configuration

The same goes for our scripts that patch (method overwrite) the Refactoring Browser's UI

```	| name0 |
	name0 := self name.
	(DbRegistry connectedProfileHolder value isNil not and: \[
	(#('kuhn') includes: DbRegistry connectedProfileHolder value userName)]) 
		ifTrue: 
			\[('\*Development' match: name0) 
				ifTrue: \[name0 := name0 copyFrom: 1 to: name0 size - 11]].
	^name0
```

But there we also have context based on the instance data of the tool

```	(self items list isEmpty not and:
		\[ '\*Development' match: self items list first pundle name])
			ifTrue:\[self allVersions].
```

&mdash[Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn)

#FAMIX source language

FAMIXMethod>>sourceText currently reads

```sourceText
	self mooseModel isJava ifTrue: \[^''].
	self mooseModel isSmalltalk ifTrue: \[^((MSEUtilities smalltalkClassFromFamixClassName: self belongsTo mooseUniqueName) sourceCodeAt: self name) asString].
	^''
```

To add a new source language, one has to add a new isFoo method, and then to edit sourceText. With method layers, simultaneous alternative representations would be possible.

&mdash[Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn)

#Use each object as Moose object

We would like to be able to feed any object into Moose, ie as soon as objects are used by code from the Moose package they should have more state and more behavior as before and the state should persist between usage by moose. The solution we use now is that an instance (or more precise its class) has to inherit from MooseElement. However the drawback is that all clients have to change their code, and also a package dependency is introduced. 

Another would be to push up everything to Object ... als ugly and does not allow for state ... but seems to be done by every other application at the moment, therefore Object's interface is overcrowded with legions of application specific methods. Also, as there is no namespace on methods, they may clash.

&mdash[Adrian Kuhn](%base_url%/wiki/alumni/adriankuhn)
