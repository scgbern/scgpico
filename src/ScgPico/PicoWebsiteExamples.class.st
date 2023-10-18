Class {
	#name : #PicoWebsiteExamples,
	#superclass : #Object,
	#category : #'ScgPico-Examples'
}

{ #category : #accessing }
PicoWebsiteExamples >> rootPage [
	<gtExample>
	^ PicoWebsiteOld instance pageAtPath: '/index.md'
]

{ #category : #accessing }
PicoWebsiteExamples >> rootPageLinks [
	<gtExample>
	| links |
	links := self rootPage links.
	self assert: links size equals: 9.
	^ links
]
