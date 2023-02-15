Class {
	#name : #PicoPage,
	#superclass : #Object,
	#instVars : [
		'file',
		'title',
		'body',
		'path'
	],
	#category : #'ScgPico-Model'
}

{ #category : #'instance creation' }
PicoPage class >> forFile: aFileReference [
	^ self new
		file: aFileReference

]

{ #category : #accessing }
PicoPage >> body [
	^ body
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
	file := aFileReference.
	assoc := PicoParser parse: self file contents.
	title := assoc key.
	body := assoc value
]

{ #category : #accessing }
PicoPage >> fullPath [
	^ self file fullName
]

{ #category : #accessing }
PicoPage >> gtBodyTextFor: aView [
	<gtView>
	^ aView textEditor
		title: 'Text';
		priority: 30;
		aptitude: BrGlamorousRegularEditorAptitude;
		text: [ self body asRopedText ]
]

{ #category : #accessing }
PicoPage >> path [
	path
		ifNil: [ path := self fullPath
					copyFrom: (self fullPath findString: self contentPath) + self contentPath size
					to: self fullPath size ].
	^ path
]

{ #category : #accessing }
PicoPage >> relativePath [
	^ self path
]

{ #category : #accessing }
PicoPage >> title [
	^ title
]
