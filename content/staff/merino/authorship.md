---
Title: Code authorship
---
#Code authorship
Open-source code are composed by contribution of many different people, who over the time commit pieces of code with different purposes such as to add functionality, fix bugs, add test. In Pharo when a developer make a change (e.g. add a comment to a class) for the first time, he or she is prompted to register his/her name. So, when the developer put a comment in a class, his/her name is registered as the author of the comment. Developers commenting classes are most likely the authors of those classes.

In this visualisation provide a top-down view of the complete Pharo system (everything which is in the Pharo image). We listed packages as rectangles, each of which contains classes depicted as squares. Classes are coloured with the color assigned to its author. In consequence, with the visualisation we can identify things such as packages that have many collaborators, packages that are mostly develop by a single contributor. The visualisation also allows the user to highlight his/her own contributions.


```
colors := Dictionary new.
colors at: 'torstenbergmann' put: Color red.
normalize := [ :name | (name copyReplaceAll: '.' with: '') asLowercase ].
author := [ :class | 
| a |
a := class organization commentStamp asString.
(a indexOf: Character space) > 0
	ifTrue: [ normalize value: 
			(a copyFrom: 1 to: (a indexOf: Character space) - 1) ]
	ifFalse: [ normalize value: a ] ].
packages := (((Smalltalk keys collect: [ :c | Smalltalk at: c ]) 
				select: #isClass) collect: #package) asSet.
view := RTView new.
els := RTBox new elementsOn: packages.
view addAll: els.
RTNest new
	for: els
	add: [ :group :model | 
		group addAll:
			(RTBox new color: [ :c | colors 
				at: (author value: c) 
				ifAbsentPut: [ Color random alpha: 0.5 ] ];
				elementsOn: model classes).
		group @ (RTPopup new 
			textElement: [ :c | (author value: c model) ,
						 ' - ' , =c model name ]).
		RTGridLayout on: group ].
RTGridLayout on: els.
els @ RTPopup.
view @ RTDraggableView.
view open
```

The result should be something like this

![Pharo_authorship](%assets_url%/files/fe/udg0x4xm54xawwkxx16k8i8bf08vsx/pharo_authorship.png)
