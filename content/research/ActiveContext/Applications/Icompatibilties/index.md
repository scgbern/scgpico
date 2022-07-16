---
Title: Incompatibilities
---
#Incompatibilities
Programs are constantly subject to change. As their size increases, they are also divided into modules. The rate at which modules may evolves may differ resulting in various possible incompatibilities which impeded the evolution of the overall software. 

Here we show this problem with an extreme case. A class Point has radically changed from an implementation supporting Cartesian coordinate, to an implementation based on polar coordinate. 

One a submodule has already been update to match the new implementation of Point. The parent module hasn't been updated which results in an incompatibility between the both modules. 

Using a context to convert the representation of the object (this is the opposite of representation independence), this incompatibility can be mitigated.

```
PolarContext>>transitionKeysFrom: keysFrom keysTo: keysTo

...

clazz := keysFrom at: 'class'.

( clazz = cartClass ) ifTrue:
[
	|x y r theta|
	x := keysFrom at: 'x' .
	y := keysFrom at: 'y' .
	
	"object may not have been initialized completely"
	( x ~= nil and: [ y ~= nil ]) ifTrue: [
		r := (( x*x ) + (y*y) ) sqrt.
		theta := ( y / x ) arcTan.
	].

	keysTo at: 'r' put: r.
	keysTo at: 'theta' put: theta.
	keysTo at: 'class' put: polarClass .
	
]
ifFalse: [
	super transitionKeysFrom: keysFrom  keysTo: keysTo . 
]

```

And here would be a test case using both representation interchangeably.

```
| polarCtx cartesianCtx |

( CartesianContext fromCurrent ) do: [
	
	| p1 p2 | 
	
	p1 := Point new.
	p1  x: 10 y: 10.
	 
	Transcript show: 'P1: ', p1 asString; cr.	
			
	(PolarContext fromCurrent ) do: [
		
		p2 := Point new.
		p2 r: 4 theta: 5.
		
		Transcript show: 'P1: ', p1  asString; cr.	
		Transcript show: 'P2: ', p2  asString; cr.	
		
	].
	
	Transcript show: 'P1: ', p1  asString; cr.	
	Transcript show: 'P2: ', p2  asString; cr.	
]
```

Which prints

```
P1: I am a CartesianPoint (x=10 y=10)
P1: I am a PolarPoint (r=14.14213562373095 theta=0.785398163397448)
P2: I am a PolarPoint (r=4 theta=5)
P1: I am a CartesianPoint (x=10 y=10)
P2: I am a CartesianPoint (x=1.134648741852905 y=-3.835697098652554)
```
