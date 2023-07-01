"
I keep track of information about URLs that appear in a Pico wesbite.
I know which pages they appear in, and what link names are used.
"
Class {
	#name : #PicoUrl,
	#superclass : #Object,
	#instVars : [
		'url',
		'linkDict'
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
PicoUrl >> addLink: aLinkName inPage: aPage [
	(self linkDict at: aLinkName ifAbsentPut: OrderedCollection new) add: aPage.
]

{ #category : #accessing }
PicoUrl >> initialize [
	super initialize.
	linkDict := Dictionary new.
]

{ #category : #accessing }
PicoUrl >> linkDict [
	^ linkDict
]

{ #category : #accessing }
PicoUrl >> linkDict: anObject [
	linkDict := anObject
]

{ #category : #accessing }
PicoUrl >> linkNames [
	^ self linkDict keys
]

{ #category : #accessing }
PicoUrl >> pages [
	^ self linkDict values flatten
]

{ #category : #initialization }
PicoUrl >> url: aURL [
	url := aURL
]
