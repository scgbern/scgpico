Class {
	#name : #PicoParser,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'separator',
		'title',
		'header',
		'noHeader',
		'body',
		'picoFile'
	],
	#category : #'ScgPico-PP2'
}

{ #category : #grammar }
PicoParser >> body [
	^ #any asPParser star flatten
]

{ #category : #grammar }
PicoParser >> header [
	^ (separator , title , separator) ==> #second
]

{ #category : #grammar }
PicoParser >> noHeader [
	^ separator not ==> [ :node | #untitled ]
]

{ #category : #grammar }
PicoParser >> picoFile [
	^ (header / noHeader , body) ==> [ :node | node first -> node second ]
]

{ #category : #grammar }
PicoParser >> separator [
	^ ('---' asPParser , #newline asPParser) flatten
]

{ #category : #accessing }
PicoParser >> start [
	^ picoFile
]

{ #category : #grammar }
PicoParser >> title [
	^ ('Title: ' asPParser , #newline asPParser negate plus flatten
		, #newline asPParser) ==> #second
]
