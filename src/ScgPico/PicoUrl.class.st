"
I keep track of information about URLs that appear in a Pico wesbite.
I know which pages they appear in, and what link names are used.
"
Class {
	#name : #PicoUrl,
	#superclass : #Object,
	#instVars : [
		'url',
		'pages'
	],
	#category : #'ScgPico-Model'
}

{ #category : #initialization }
PicoUrl class >> forUrl: aURL [
	^ self new 
		url: aURL;
		yourself
]

{ #category : #accessing }
PicoUrl >> <= aPicoUrl [
	^ self url <= aPicoUrl url
]

{ #category : #accessing }
PicoUrl >> addPage: aPage [
	self pages add: aPage
]

{ #category : #accessing }
PicoUrl >> addUrl: aLinkName inPage: aPage [
	(self urlDict at: aLinkName ifAbsentPut: OrderedCollection new) add: aPage.
]

{ #category : #accessing }
PicoUrl >> gtPagesFor: aView [
	<gtView>
	^ aView list
		title: 'Pages';
		priority: 30;
		items: [ self pages asOrderedCollection ];
		actionUpdateButtonTooltip: 'Update item list'
]

{ #category : #accessing }
PicoUrl >> initialize [
	super initialize.
	pages := Set new.
]

{ #category : #accessing }
PicoUrl >> pages [
	^ pages
]

{ #category : #accessing }
PicoUrl >> printOn: aStream [
	aStream << self url
]

{ #category : #accessing }
PicoUrl >> url [
	^ url
]

{ #category : #initialization }
PicoUrl >> url: aURL [
	url := aURL
]
