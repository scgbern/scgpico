"
I am the raw parser, returning the full parse.
I am used when all the pieces are needed.
"
Class {
	#name : #LinkSeaParser,
	#superclass : #PP2CompositeNode,
	#instVars : [
		'link',
		'linkSea',
		'start'
	],
	#category : #'ScgPico-PP2'
}

{ #category : #grammar }
LinkSeaParser >> link [
	^ $[ asPParser , '](' asPParser negate star flatten trim , '](' asPParser
		, $) asPParser negate star flatten trim , $) asPParser
]

{ #category : #grammar }
LinkSeaParser >> linkSea [
	^ link sea star
]

{ #category : #accessing }
LinkSeaParser >> start [
	^ linkSea
]
