"
I am the refined parser, returning just the links (a collection of text -> url associations).s
"
Class {
	#name : #LinkExtractor,
	#superclass : #LinkSeaParser,
	#category : #'ScgPico-PP2'
}

{ #category : #grammar }
LinkExtractor >> link [
	^ super link ==> [ :node | node second -> node fourth ]
]

{ #category : #grammar }
LinkExtractor >> linkSea [
	^ (link sea ==> #second) star
]
