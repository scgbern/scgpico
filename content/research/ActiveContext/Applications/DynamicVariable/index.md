---
Title: Dynamic Variable
---

Smalltalk has a mechanism to simulate dynamic variables. 

#Smalltalk DynamicVariable

```DynamicVariable subclass: #RegularDynamicVariable
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ActiveContext-Examples'
```

```[
	RegularDynamicVariable value: 1 during:[
		self checkRegularDynamic: 1.
		(Delay forMilliseconds: 30) wait.
		self checkRegularDynamic: 1.			
		RegularDynamicVariable value: 3 during:[		
			(Delay forMilliseconds: 30) wait.
			self checkRegularDynamic: 3.			
		].			
		self checkRegularDynamic: 1.
	].
	self checkRegularDynamic: nil.
	p1stopped := true.
	s1 signal.
] fork.
```

#With Active Context

```Context subclass: #DynamicContextTest
	instanceVariableNames: 'targetVar targetVal'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ActiveContext-Examples'
```

The transfer function copy everything except targetVar which is initialized to targetVal.

```DynamicContextTest>>transitionKeysFrom: keysFrom keysTo: keysTo
keysFrom keysAndValuesDo: [ :key :val | 	 
	( keysTo at: key ) ifNil: [ 
		(key = targetVar ) 
			ifTrue: [ keysTo at: key put: targetVal ] 
			ifFalse: [ keysTo at: key put: (keysFrom at: key ) ].
	].
]. 
```

The code is then similar, except that the dynamic variable can be accessed with value as usual.

```[
	( DynamicContextTest with: 1 ) do: [ 
		self checkContextDynamic: 1.
		(Delay forMilliseconds: 30) wait.
		self checkContextDynamic: 1.
		( DynamicContextTest with: 3 ) do:[
			(Delay forMilliseconds: 30) wait.
			self checkContextDynamic: 3
		].
		self checkContextDynamic: 1.
	].
	self checkContextDynamic: 0.
	p1stopped := true.
	s1 signal.
] fork.
```
