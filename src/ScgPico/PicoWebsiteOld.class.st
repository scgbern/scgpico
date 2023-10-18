"
I am a collection of PicoPage objects.
I also hold an urlDict dictionary of urls to PicoUrl objects.
"
Class {
	#name : #PicoWebsiteOld,
	#superclass : #Object,
	#instVars : [
		'pages',
		'db',
		'urlDict'
	],
	#classInstVars : [
		'instance'
	],
	#category : #'ScgPico-Model'
}

{ #category : #accessing }
PicoWebsiteOld class >> assetsUrl [
	^ 'https://scg.unibe.ch/'
]

{ #category : #accessing }
PicoWebsiteOld class >> instance [
	^ instance ifNil: [ instance := self new ]
]

{ #category : #accessing }
PicoWebsiteOld class >> renew [
	instance := nil.
	^ [ self instance ] timeToRun
]

{ #category : #constant }
PicoWebsiteOld >> contentDir [
	<gtExample>
	^ self repoDir / 'content'
]

{ #category : #accessing }
PicoWebsiteOld >> db [
	"Transient Lepiter database for the dynamically created pages."

	^ db
		ifNil: [ db := LeDatabase new.
			db parent: LeDatabasesRegistry uniqueInstance defaultLogicalDatabase.
			db ]
]

{ #category : #accessing }
PicoWebsiteOld >> gtLepiterFor: aView [
	<gtView>
	^ aView forward
		title: 'Lepiter DB';
		priority: 20;
		object: [ self db ];
		view: #gtLiveFor:;
		actionUpdateButton
]

{ #category : #view }
PicoWebsiteOld >> gtPagesFor: aView [
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
			text: [ :page | page path ];
		column: 'Title' 
			text: [ :page | page title value ].
]

{ #category : #accessing }
PicoWebsiteOld >> gtSpotterForPageBodyFor: aSearch [
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
PicoWebsiteOld >> gtSpotterForPagePathFor: aSearch [
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
PicoWebsiteOld >> gtSpotterForPageTitlesFor: aSearch [
	<gtSearch>
	^ aSearch list
				priority: 10;
				items: [ self pages ];
				title: 'Title';
				itemsLimit: Float infinity;
				itemName: #title;
				filterBySubstring 
]

{ #category : #view }
PicoWebsiteOld >> gtUrlsFor: aView [
	<gtView>
	^ aView columnedList
		title: 'URLs';
		priority: 30;
		items: [ self urls ];
		actionUpdateButtonTooltip: 'Update item list';
		column: 'Index' 
			text: [ :eachItem :eachIndex | 
				eachIndex asRopedText foreground: Color gray ]
			width: 45;
		column: 'Url' 
			text: [ :picoUrl | picoUrl url ]
			width: 400;
		column: '# pages' 
			text: [ :picoUrl | picoUrl pages size ]
			width: 60
]

{ #category : #initialization }
PicoWebsiteOld >> initialize [
	urlDict := Dictionary new.
	self loadPages.
]

{ #category : #initialization }
PicoWebsiteOld >> loadPages [
	| mdFiles |
	mdFiles := self contentDir allChildrenMatching: '*.md'.
	self
		pages: ((mdFiles
				collect: [ :each | 
					each basenameWithoutExtension = 'sidebar'
						ifTrue: [ SideBar forFile: each website: self ]
						ifFalse: [ PicoPage forFile: each website: self ] ])
				sorted: [ :a :b | a path < b path ])
]

{ #category : #accessing }
PicoWebsiteOld >> pageAtPath: aPath [
	^ self pages detect: [ :p | p path = aPath ]
]

{ #category : #accessing }
PicoWebsiteOld >> pages [
	^ pages
]

{ #category : #accessing }
PicoWebsiteOld >> pages: anObject [
	pages := anObject
]

{ #category : #constant }
PicoWebsiteOld >> repoDir [
	| repoName |
	repoName := 'scgpico'.
	^ IceRepository registry
		detect: [ :aRepository | aRepository name = repoName ]
		ifFound: [ :aRepository | aRepository repositoryDirectory ]
		ifNone: [ self error: 'Repository not found.' ]
]

{ #category : #accessing }
PicoWebsiteOld >> urlDict [
	^ urlDict
]

{ #category : #accessing }
PicoWebsiteOld >> urlFor: anURL [
	^ self urlDict at: anURL ifAbsentPut: [ PicoUrl forUrl: anURL ]
]

{ #category : #accessing }
PicoWebsiteOld >> urls [
	^ self urlDict values sorted
]
