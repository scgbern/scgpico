Class {
	#name : #PicoWebsiteRedux,
	#superclass : #MarkdownWebsite,
	#classInstVars : [
		'cache'
	],
	#category : #'ScgPico-ModelRedux'
}

{ #category : #accessing }
PicoWebsiteRedux class >> cache [
	"A cache of loaded websites."

	^ cache ifNil: [ cache := Dictionary new ]
]

{ #category : #initialization }
PicoWebsiteRedux class >> initialize [
	"Run this to clear the cache as well."

	super initialize.
	cache := Dictionary new
]

{ #category : #'instance creation' }
PicoWebsiteRedux class >> scg [
	"Here we assume we are in the cloned repo, so no need to clone it again."

	| key repoUrl webUrl repoDir navMenuLinks |
	key := 'scg'.
	webUrl := 'https://scg.unibe.ch'.
	repoUrl := 'https://github.com/scgbern/scgpico'.
	repoDir := (FileLocator imageDirectory / 'pharo-local' / 'iceberg' / 'scgbern'
			/ 'scgpico') asFileReference.
	navMenuLinks := {'/research'.
			'/teaching'.
			'/publications'.
			'/staff'.
			'/wiki'.
			'scgbib'}.
	^ cache
		at: key
		ifAbsentPut: [ self new
				repoDir: repoDir;
				url: webUrl;
				navigationMenuLinks: navMenuLinks ]
]

{ #category : #accessing }
PicoWebsiteRedux >> contentDir [
	^ self repoDir / 'content'
]

{ #category : #view }
PicoWebsiteRedux >> gtInternalLinksFor: aView [
	<gtView>
	self links ifEmpty: [ ^ aView empty ].
	^ aView columnedList
		title: 'Internal links';
		priority: 32;
		items: [ self internalLinks ];
		column: 'Index'
			text: [ :eachItem :eachIndex | eachIndex asRopedText foreground: Color gray ]
			width: 45;
		column: 'Link'
			text: [ :item | item path ]
			width: 200;
		column: '# Pages'
			text: [ :item | item pages size ]
			width: 60;
		column: 'Status' text: [ :item | item status ];
		actionUpdateButton;
		actionButtonIcon: BrGlamorousVectorIcons inspect
			tooltip: 'Inspect  value'
			action: [ :aButton :aTab | aButton phlow spawnObject: self internalLinks ];
		updateWhen: WebLinkStatusUpdated in: self announcer
]

{ #category : #accessing }
PicoWebsiteRedux >> overview [
	"^ {'# Pages' -> self pages size.
		'# Links' -> self links size.
		'# External (HTTP) links' -> self httpLinks size.
		'# Internal links' -> self internalLinks size.
		'# Email links' -> (self links select: #isEmail) size.
		'# Missing links' -> self missingLinks size.
		'# Reachable pages' -> ([ self reachable size ] onErrorDo: [ '?' ]).
		'# Unreachable pages' -> ([ self unreachable size ] onErrorDo: [ '?' ])}"
		^ super overview
]

{ #category : #constant }
PicoWebsiteRedux >> webLinkClass [
	^ PicoWebLink
]

{ #category : #constant }
PicoWebsiteRedux >> webPageClass [
	^ PicoWebPage
]
