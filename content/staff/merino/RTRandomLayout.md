---
Title: RTRandomLayout
---
#RTRandomLayout
```
RTRandomLayout>#doExecute:

doExecute: elements
	|  seed  |
	elements isEmpty ifTrue: [ ^ self ].
	seed := elements size * 5.
	elements
		do: [ :each | 
			| point center|
			center := Point x: seed asInteger atRandom 
					y: seed asInteger atRandom.
			point := center + 
				(Point r: seed asInteger atRandom theta: 10).
			translator translateTopLeftOf: each to: point.
			self step ]
```
