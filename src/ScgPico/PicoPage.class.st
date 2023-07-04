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
PicoPage >> assertsUrl [
	^ PicoWebsite assetsUrl
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
	"This is where the root of the website starts for the markdown pages."

	^ 'scgpico/content'
]

{ #category : #initalization }
PicoPage >> createLePage [
	<todo: 'normalize the links'>
	lePage := LePage named: self path.
	lePage addSnippet: (LeTextSnippet new string: '# ' , self title value).
	self body
		do: [ :paragraph | 
			lePage
				addSnippet: (LeTextSnippet new string: (self normalizeLinks: paragraph value)) ].
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
	"Full path of the underlying file."

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
	"Create these lazily."

	^ lePage ifNil: [ self createLePage ]
]

{ #category : #initalization }
PicoPage >> linkForText: aText andUrl: anUrl [
	| url |
	url := self normalize: anUrl.
	^ (url beginsWith: 'http')
		ifTrue: [ '[' , aText , '](' , url , ')' ]
		ifFalse: [ '{{gtPage:' , url , '|label=' , aText , '}}' ]
]

{ #category : #accessing }
PicoPage >> links [
	"The parser returns a collection of text -> url associations.
	NB: These are the raw, not normalized urls."

	^ self body
		flatCollect: [ :par | 
			(LinkSeaParser new parse: par)
				collect: [ :node | node second second -> node second fourth ] ]
]

{ #category : #accessing }
PicoPage >> normalize: anUrl [
	(anUrl beginsWith: 'http') ifTrue: [ ^ anUrl ].

	(anUrl beginsWith: '%assets_url%/')
		ifTrue: [ ^ anUrl copyWithRegex: '%assets_url%/' matchesReplacedWith: self assertsUrl ].

	(anUrl beginsWith: '/') ifTrue: [ ^ anUrl ].
	(anUrl beginsWith: '%base_url%/')
		ifTrue: [ ^ anUrl copyWithRegex: '%base_url%/' matchesReplacedWith: '/' ].

	^ self pathPrefix , '/' , anUrl
]

{ #category : #initalization }
PicoPage >> normalizeLinks: aString [
	"Need to find all the [text](URL) links.
	If the normalized URL is http, then keep it as is.
	If it starts with '/', convert it to {{gtPage:URL|label=text}}.
	"

	| parse |
	parse := LinkSeaParser parse: aString.
	^ ''
		join: (parse
				collect: [ :each | 
					''
						join: {'' join: each first.
								self linkForText: each second second andUrl: each second fourth.
								'' join: each third} ])
]

{ #category : #accessing }
PicoPage >> path [
	"Path from the root of the website"
	path
		ifNil: [ path := self fullPath
					copyFrom: (self fullPath findString: self contentPath) + self contentPath size
					to: self fullPath size ].
	^ path
]

{ #category : #accessing }
PicoPage >> pathPrefix [
	"Path up to my parent"

	^ self path copyUpToLast: $/
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
	"Register each URL in the urlDict of the website, and also log it in a local dictionary with all the text values used in the links."

	self assert: self file notNil.
	self assert: self website notNil.
	self links
		do: [ :assoc | 
			| url |
			url := self normalize: assoc value.
			(self urlFor: url) addPage: self.
			(self urlDict at: url ifAbsentPut: [ Set new ]) add: assoc key ]
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
