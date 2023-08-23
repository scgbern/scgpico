Class {
	#name : #PicoWebPage,
	#superclass : #MarkdownWebPage,
	#category : #'ScgPico-ModelRedux'
}

{ #category : #accessing }
PicoWebPage >> markdownLinks [
	"The implementation using MicrodownParser breaks with URLs of the form [](%assets_url%/download/...) because it thinks the are hex encoded characters.
	We override that and use our own link extractor."

	^ LinkExtractor new parse: self contents
]

{ #category : #accessing }
PicoWebPage >> title [
	^ title
		ifNil: [ self yaml
				at: 'Title'
				ifAbsent: [ self yaml
						at: 'title'
						ifAbsent: [ (self path endsWith: 'sidebar.md')
								ifTrue: [ '(sidebar)' ]
								ifFalse: [ 'MISSING TITLE' ] ] ] ]
]
