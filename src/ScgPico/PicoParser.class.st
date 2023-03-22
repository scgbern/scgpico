Class {
	#name : #PicoParser,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'title',
		'newline',
		'header',
		'paragraph',
		'body',
		'file'
	],
	#category : #'ScgPico-PP2'
}

{ #category : #grammar }
PicoParser >> body [
	^ (header optional ,
		paragraph ,
		(newline plus , paragraph) star ,
		newline star)
		==> [ :node | 
			| paragraphs |
			paragraphs := node third
					ifEmpty: [ {node second} asOrderedCollection ]
					ifNotEmpty: [ (node third collect: #second) asOrderedCollection
							addFirst: node second;
							yourself ].
			{#title -> node first.
				#body -> paragraphs} asDictionary ]
]

{ #category : #grammar }
PicoParser >> file [
	^ body end
]

{ #category : #grammar }
PicoParser >> header [
	^ ('---' asPParser , newline , 'Title:' asPParser trim , title , newline
		, '---' asPParser , newline) ==> #fourth
]

{ #category : #grammar }
PicoParser >> newline [
	^ #newline asPParser
]

{ #category : #grammar }
PicoParser >> paragraph [
	^ (newline negate plus / (newline , newline not)) plus token
]

{ #category : #accessing }
PicoParser >> start [
	^ file
]

{ #category : #grammar }
PicoParser >> title [
	^ #newline asPParser negate plus token
]
