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
		'path',
		'website',
		'lePage',
		'urlDict'
	],
	#category : #'ScgPico-Model'
}

{ #category : #'instance creation' }
PicoPage class >> forFile: aFileReference website: aPicoWebsite [
	^ self new
		file: aFileReference;
		website: aPicoWebsite;
		registerUrls;
		yourself
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

{ #category : #initalization }
PicoPage >> createLePage [
	lePage := LePage named: self relativePath.
	lePage addSnippet: (LeTextSnippet new string: '# ' , self title value).
	self body
		do: [ :paragraph | lePage addSnippet: (LeTextSnippet new string: paragraph value) ].
	self db addPage: lePage.
	^ lePage
]

{ #category : #accessing }
PicoPage >> db [
	^ self website db
]

{ #category : #accessing }
PicoPage >> file [
	^ file
]

{ #category : #initalization }
PicoPage >> file: aFileReference [
	"Can only initialize this when we get the file reference."

	| dict |
	file := aFileReference.
	dict := PicoParser parse: self file contents.
	title := (dict at: #title) ifNil: [ 'MISSING TITLE' ].
	body := (dict at: #body) ifNil: [ 'MISSING BODY' ].
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

{ #category : #initalization }
PicoPage >> initialize [
	super initialize.
	urlDict := Dictionary new
]

{ #category : #testing }
PicoPage >> isSidebar [
	^ false
]

{ #category : #lepiter }
PicoPage >> lePage [
	^ lePage ifNil: [ self createLePage ]
]

{ #category : #accessing }
PicoPage >> links [
	^ self body flatCollect: [ :par | LinkSeaParser new parse: par ]
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
PicoPage >> printOn: aStream [
	super printOn: aStream.
	aStream
		<< ': (';
		<< self title;
		<< ')[';
		<< self path;
		<< ']'
]

{ #category : #initalization }
PicoPage >> registerUrls [
	self assert: self file notNil.
	self assert: self website notNil.
	self links
		do: [ :assoc | 
			(self urlFor: assoc value) addPage: self.
			(self urlDict at: assoc value ifAbsentPut: [ Set new ]) add: assoc key ]
]

{ #category : #accessing }
PicoPage >> relativePath [
	^ self path
]

{ #category : #accessing }
PicoPage >> title [
	^ title
]

{ #category : #initalization }
PicoPage >> urlDict [
	^ urlDict
]

{ #category : #initalization }
PicoPage >> urlFor: anUrl [
	^ self website urlFor: anUrl
]

{ #category : #accessing }
PicoPage >> urls [
	^ (self links collect: #value) asSet asOrderedCollection
]

{ #category : #accessing }
PicoPage >> website [
	^ website
]

{ #category : #accessing }
PicoPage >> website: anObject [
	website := anObject.
	self createLePage.
]
