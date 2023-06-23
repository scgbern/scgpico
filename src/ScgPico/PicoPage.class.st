"
I am a page in a Pico website. My contents are specified as markdown, with a YAML header containing my title.
"
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

{ #category : #accessing }
PicoPage >> bodyText [
	^ (String cr repeat: 2) join: self body
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
	| dict |
	file := aFileReference.
	dict := PicoParser parse: self file contents.
	title := (dict at: #title) ifNil: [ 'MISSING TITLE' ].
	body := (dict at: #body) ifNil: [ 'MISSING BODY' ]
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
		text: [ self bodyText asRopedText ]
]

{ #category : #accessing }
PicoPage >> gtLePageFor: aView [
	<gtView>

	^ aView forward
		title: 'LePage';
		priority: 10;
		object: [ self lePage ];
		view: #gtLiveFor:
]

{ #category : #testing }
PicoPage >> isSidebar [
	^ false
]

{ #category : #lepiter }
PicoPage >> lePage [
	| lePage |
	lePage := LePage named: self relativePath.
	lePage addSnippet: (LeTextSnippet new string: '# ' , self title value).
	self body
		do: [ :paragraph | lePage addSnippet: (LeTextSnippet new string: paragraph value) ].
	^ lePage
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
