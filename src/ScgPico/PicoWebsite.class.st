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
	#classInstVars : [
		'instance'
	],
	#category : #'ScgPico-Model'
}

{ #category : #accessing }
PicoWebsite class >> instance [
	^ instance ifNil: [ instance := self new ]
]

{ #category : #accessing }
PicoWebsite class >> renew [
	instance := nil.
	^ self instance
]

{ #category : #accessing }
PicoWebsite >> addLepiterPages [
	self pages do: [ :each | self lepiterDB addPage: each lePage ]
]

{ #category : #constant }
PicoWebsite >> contentDir [
	^ self repoDir / 'content'
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
		items: [ self pages ];
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

{ #category : #accessing }
PicoWebsite >> gtSpotterForPageBodyFor: aSearch [
	<gtSearch>
	^ aSearch list
				priority: 30;
				items: [ self pages ];
				title: 'Body';
				itemsLimit: Float infinity;
				itemName: #bodyText;
				filterBySubstring 
]

{ #category : #accessing }
PicoWebsite >> gtSpotterForPagePathFor: aSearch [
	<gtSearch>
	^ aSearch list
				priority: 20;
				items: [ self pages ];
				title: 'Path';
				itemsLimit: Float infinity;
				itemName: #path;
				filterBySubstring 
]

{ #category : #accessing }
PicoWebsite >> gtSpotterForPageTitlesFor: aSearch [
	<gtSearch>
	^ aSearch list
				priority: 10;
				items: [ self pages ];
				title: 'Title';
				itemsLimit: Float infinity;
				itemName: #title;
				filterBySubstring 
]

{ #category : #initialization }
PicoWebsite >> initialize [
	self loadPages.
	self addLepiterPages
]

{ #category : #accessing }
PicoWebsite >> lepiterDB [
	"Transient Lepiter database for the dynamically created pages."

	^ lepiterDB
		ifNil: [ lepiterDB := LeDatabase new.
			lepiterDB parent: LeDatabasesRegistry uniqueInstance defaultLogicalDatabase ]
]

{ #category : #initialization }
PicoWebsite >> loadPages [
	| mdFiles |
	mdFiles := self contentDir allChildrenMatching: '*.md'.
	self
		pages: ((mdFiles
				collect: [ :each | 
					each basenameWithoutExtension = 'sidebar'
						ifTrue: [ SideBar forFile: each ]
						ifFalse: [ PicoPage forFile: each ] ]) sorted: [ :a :b | a path < b path ])
]

{ #category : #accessing }
PicoWebsite >> pages [
	^ pages
]

{ #category : #accessing }
PicoWebsite >> pages: anObject [
	pages := anObject
]

{ #category : #constant }
PicoWebsite >> repoDir [
	| repoName |
	repoName := 'scgpico'.
	^ IceRepository registry
		detect: [ :aRepository | aRepository name = repoName ]
		ifFound: [ :aRepository | aRepository repositoryDirectory ]
		ifNone: [ self error: 'Repository not found.' ]
]
