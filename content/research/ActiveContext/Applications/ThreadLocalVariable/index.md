---
Title: ThreadLocalVariable
---

Active context can be used to properly define thread local variable without the need of *ad hoc* constructs such as holder object.

#With LocalVariable

Smalltalk has LocalVariable for this purpose.

```ProcessLocalVariable subclass: #RegularLocalVariable
	instanceVariableNames: \''
	classVariableNames: \''
	poolDictionaries: \''
	category: 'ActiveContext-Examples'
```

Then with a fork

```[
	self checkRegularLocal: 0.
	RegularLocalVariable value: 1.
	self checkRegularLocal: 1.
	(Delay forMilliseconds: 30) wait.
	self checkRegularLocal: 1.
	RegularLocalVariable value: 2.
	self checkRegularLocal: 2.
	p1stopped := true.
	s1 signal.
] fork.
```

#With ActiveContext

A context can be created to define thread local semantics

```Context subclass: #LocalContextTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'ActiveContext-Examples'
```

```LocalContextTest>>transitionKeysFrom: keysFrom keysTo: keysTo
keysFrom keysAndValuesDo: [ :key :val | 
	keysTo at: key 
	ifAbsent: [ 
		keysTo at: key put: nil .
	].
]. 
```

Then with a fork

```[	
	| ctx2 |
	ctx2 := LocalContextTest ancestor: CurrentContext instance 
				 uuid: #Child1.
	ctx2 do: [
		self checkContextLocal: nil.
		value := 1.
		self checkContextLocal: 1.
		(Delay forMilliseconds: 30) wait.
		self checkContextLocal: 1.
		value := 2.
		self checkContextLocal: 2.
	].
	p1stopped := true.
	s1 signal.
] fork.
```

The obvious advantage of active context is that the semantics is defined in a way that it can naturally be used for thread group local variable. The threads simply need to share the same context.
