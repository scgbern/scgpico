---
Title: Global state no more global
---

Classes are object as well, which means that global state isn't really global anymore.

```CtxBuffer class
	instanceVariableNames: 'defaultSize'

CtxBuffer class>> new
^ super new size: self defaultSize .
```

The context is an object, which can be parametrized with the new value to fill in the class-side variable.

```Context subclass: #ConfigContext
	instanceVariableNames: 'defaultSize'
```

```ConfigContext>>transitionKeysFrom: instVarFrom keysTo: instVarTo
	| cls |
	cls := instVarFrom at: 'class'.
	( cls = CtxBuffer class ) 
		ifTrue: [  
			instVarTo at: 'defaultSize' put: self defaultSize . 
			instVarTo at: 'class' put: cls. 
		] 
		ifFalse: [ 
			super transitionKeysFrom: instVarFrom  keysTo: instVarTo   
		].
```


And here is a sample test case:

```ConfigeTest>>testBufferSize
	self assert: [ CtxBuffer new  size = 10 ].
	( ConfigContext defaultSize: 20  ) do: [
		self assert: [ CtxBuffer new  size = 20 ].
	]
```

A naive approach where the value of the class-side variable is changed to 20 then back to 10 manually would work in this particular test case but would fail in a multi-threaded scenario. While with active context, state isolation is correctly achieved in multi threaded scenario.
