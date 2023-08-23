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
