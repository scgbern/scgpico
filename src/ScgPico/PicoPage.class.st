Class {
	#name : #PicoPage,
	#superclass : #Object,
	#instVars : [
		'file',
		'title',
		'body'
	],
	#category : #'ScgPico-Model'
}

{ #category : #'instance creation' }
PicoPage class >> forFile: aFileReference [
	^ self new
		file: aFileReference

]

{ #category : #constants }
PicoPage >> contentPath [
	^ 'scgpico/content/'
]

{ #category : #accessing }
PicoPage >> file [
	^ file
]

{ #category : #initalization }
PicoPage >> file: aFileReference [
	| assoc |
	self file: aFileReference.
	assoc := PicoParser parse: (self file) contents.
	title := assoc key.
	body := assoc value
]

{ #category : #accessing }
PicoPage >> fullPath [
	^ self file fullName
]

{ #category : #accessing }
PicoPage >> relativePath [
	self fullPath
		copyFrom: (self fullPath findString: self contentPath) + self contentPath size
		to: self fullPath size
]
