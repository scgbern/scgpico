---
Title: A kind of Inline-if for Smalltalk
---
#A kind of Inline-if for Smalltalk
```
? anArrayOfTwoBlocks
"inline-if
4 > 0	? {[ 'four' ].[ 'zero' ]}"
	^self
		ifTrue: [ anArrayOfTwoBlocks first value ]
		ifFalse: [ anArrayOfTwoBlocks second value ] 
```
