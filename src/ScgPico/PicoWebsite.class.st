"
I am a collection of PicoPage objects.
"
Class {
	#name : #PicoWebsite,
	#superclass : #Object,
	#instVars : [
		'pages',
		'lepiterDB'
	],
	#category : #'ScgPico-Model'
}

{ #category : #accessing }
PicoWebsite >> addLepiterDB [
	<todo: 'Check that it doesn''t exist already'>
	| dbDir |
	dbDir := self lepiterDir.
	dbDir ensureCreateDirectory.
	LeDatabasesRegistry defaultLogicalDatabase properties
		addRegisteredDirectory: dbDir.
	LeDatabasesRegistry defaultLogicalDatabase reload
]

{ #category : #accessing }
PicoWebsite >> addLepiterPages [
	self pages do: [ :each | self lepiterDB addPage: each lePage ]
]

{ #category : #accessing }
PicoWebsite >> gtLepiterFor: aView [
	<gtView>
	^ aView forward
		title: 'Lepiter DB';
		priority: 20;
		object: [ self lepiterDB ];
		view: #gtLiveFor:
]

{ #category : #view }
PicoWebsite >> gtPagesFor: aView [
	<gtView>
	^ aView columnedList
		title: 'Pages';
		priority: 10;
		items: [ pages ];
		actionUpdateButtonTooltip: 'Update item list';
		column: 'Index' 
			text: [ :eachItem :eachIndex | 
				eachIndex asRopedText foreground: Color gray ]
			width: 45;
		column: 'Page' 
			text: [ :page | page relativePath ];
		column: 'Title' 
			text: [ :page | page title value ].
]

{ #category : #initialization }
PicoWebsite >> initialize [
	self loadPages.
	self addLepiterDB.
	self addLepiterPages.
]

{ #category : #accessing }
PicoWebsite >> lepiterDB [
	lepiterDB
		ifNil: [ lepiterDB := LeDatabasesRegistry defaultLogicalDatabase databases
					detect: [ :db | db monitor localRoot = self lepiterDir ] ].
	^ lepiterDB
]

{ #category : #constant }
PicoWebsite >> lepiterDir [
	^ FileLocator imageDirectory / 'picoLepiter'
]

{ #category : #initialization }
PicoWebsite >> loadPages [
	| mdFiles |
	mdFiles := self scgpico allChildrenMatching: '*.md'.
	pages := (mdFiles
			collect: [ :each | 
				each basenameWithoutExtension = 'sidebar'
					ifTrue: [ SideBar forFile: each ]
					ifFalse: [ PicoPage forFile: each ] ]) sorted: [ :a :b | a path < b path ]
]

{ #category : #accessing }
PicoWebsite >> pages [
	^ pages
]

{ #category : #constant }
PicoWebsite >> scgpico [
	^ FileLocator imageDirectory / 'pharo-local' / 'iceberg' / 'scgbern'
		/ 'scgpico' / 'content'
]
